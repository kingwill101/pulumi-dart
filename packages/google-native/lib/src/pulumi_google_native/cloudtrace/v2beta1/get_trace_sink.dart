import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trace_sink_args.dart';
import 'get_trace_sink_result.dart';

/// Get a trace sink by name under the parent resource (GCP project).
Future<GetTraceSinkResult> getTraceSink(
  GetTraceSinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtrace/v2beta1:getTraceSink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTraceSinkResult.fromMap(result);
}
