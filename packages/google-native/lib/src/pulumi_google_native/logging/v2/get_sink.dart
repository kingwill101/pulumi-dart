import 'package:pulumi/pulumi.dart';
import 'get_sink_args.dart';
import 'get_sink_result.dart';

/// Gets a sink.
Future<GetSinkResult> getSink(
  GetSinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getSink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSinkResult.fromMap(result);
}
