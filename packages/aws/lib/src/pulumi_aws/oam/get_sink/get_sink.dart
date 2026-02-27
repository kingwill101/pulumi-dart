import 'package:pulumi/pulumi.dart';
import 'get_sink_args.dart';
import 'get_sink_result.dart';

/// Data source for managing an AWS CloudWatch Observability Access Manager Sink.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetSinkResult> getSink(
  GetSinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:oam/getSink:getSink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSinkResult.fromMap(result);
}
