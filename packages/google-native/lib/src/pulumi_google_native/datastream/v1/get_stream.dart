import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stream_args.dart';
import 'get_stream_result.dart';

/// Use this method to get details about a stream.
Future<GetStreamResult> getStream(
  GetStreamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastream/v1:getStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamResult.fromMap(result);
}
