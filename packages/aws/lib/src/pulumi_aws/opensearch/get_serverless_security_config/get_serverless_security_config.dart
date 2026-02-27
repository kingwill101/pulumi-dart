import 'package:pulumi/pulumi.dart';
import 'get_serverless_security_config_args.dart';
import 'get_serverless_security_config_result.dart';

/// Data source for managing an AWS OpenSearch Serverless Security Config.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServerlessSecurityConfigResult> getServerlessSecurityConfig(
  GetServerlessSecurityConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessSecurityConfig:getServerlessSecurityConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerlessSecurityConfigResult.fromMap(result);
}
