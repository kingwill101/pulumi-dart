import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_realtime_log_config_args.dart';
import 'get_realtime_log_config_result.dart';

/// Provides a CloudFront real-time log configuration resource.
Future<GetRealtimeLogConfigResult> getRealtimeLogConfig(
  GetRealtimeLogConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getRealtimeLogConfig:getRealtimeLogConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRealtimeLogConfigResult.fromMap(result);
}
