import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_security_config_args.dart';
import 'get_serverless_security_config_result.dart';

/// Data source for managing an AWS OpenSearch Serverless Security Config.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServerlessSecurityConfigResult> getServerlessSecurityConfig(
  GetServerlessSecurityConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessSecurityConfig:getServerlessSecurityConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessSecurityConfigResult.fromMap(result);
}
