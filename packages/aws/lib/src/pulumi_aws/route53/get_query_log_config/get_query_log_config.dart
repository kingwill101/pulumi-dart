import 'package:pulumi/pulumi.dart';
import 'get_query_log_config_args.dart';
import 'get_query_log_config_result.dart';

/// `aws.route53.ResolverQueryLogConfig` provides details about a specific Route53 Resolver Query Logging Configuration.
Future<GetQueryLogConfigResult> getQueryLogConfig(
  GetQueryLogConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getQueryLogConfig:getQueryLogConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueryLogConfigResult.fromMap(result);
}
