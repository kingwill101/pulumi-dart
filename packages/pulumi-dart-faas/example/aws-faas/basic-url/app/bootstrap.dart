import 'dart:convert';
import 'dart:io';

class LambdaContext {
  final String requestId;
  final String? invokedFunctionArn;
  final String? traceId;

  const LambdaContext({
    required this.requestId,
    this.invokedFunctionArn,
    this.traceId,
  });
}

Future<Object?> handler(Map<String, Object?> event, LambdaContext context) async {
  final path = event['rawPath'] ?? event['path'] ?? '/';
  return {
    'statusCode': 200,
    'headers': {'content-type': 'application/json'},
    'body': jsonEncode({
      'ok': true,
      'message': 'hello from aws-faas basic-url',
      'path': path,
      'requestId': context.requestId,
    }),
  };
}

Future<void> main() async {
  final runtimeApi = Platform.environment['AWS_LAMBDA_RUNTIME_API'];
  if (runtimeApi == null || runtimeApi.isEmpty) {
    stderr.writeln('AWS_LAMBDA_RUNTIME_API is not set.');
    exitCode = 1;
    return;
  }

  final client = HttpClient();
  while (true) {
    final next = await client
        .getUrl(
          Uri.http(
            runtimeApi,
            '/2018-06-01/runtime/invocation/next',
          ),
        )
        .then((request) => request.close());

    final requestId = next.headers.value('Lambda-Runtime-Aws-Request-Id');
    if (requestId == null || requestId.isEmpty) {
      stderr.writeln('Missing Lambda-Runtime-Aws-Request-Id.');
      exitCode = 2;
      return;
    }

    final payload = await utf8.decoder.bind(next).join();
    try {
      final decoded = jsonDecode(payload);
      final event = _asEventMap(decoded);
      final context = LambdaContext(
        requestId: requestId,
        invokedFunctionArn: next.headers.value(
          'Lambda-Runtime-Invoked-Function-Arn',
        ),
        traceId: next.headers.value('Lambda-Runtime-Trace-Id'),
      );
      final response = await handler(event, context);
      await _postJson(
        client,
        runtimeApi,
        '/2018-06-01/runtime/invocation/$requestId/response',
        response,
      );
    } catch (error, stackTrace) {
      await _postJson(
        client,
        runtimeApi,
        '/2018-06-01/runtime/invocation/$requestId/error',
        {
          'errorType': error.runtimeType.toString(),
          'errorMessage': error.toString(),
          'stackTrace': stackTrace.toString(),
        },
      );
    }
  }
}

Map<String, Object?> _asEventMap(dynamic value) {
  if (value is Map) {
    return value.cast<String, Object?>();
  }
  return {'value': value};
}

Future<void> _postJson(
  HttpClient client,
  String runtimeApi,
  String path,
  Object? payload,
) async {
  final request = await client.postUrl(Uri.http(runtimeApi, path));
  request.headers.contentType = ContentType.json;
  request.write(jsonEncode(payload));
  final response = await request.close();
  await response.drain();
}
