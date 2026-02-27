import 'package:pulumi/pulumi.dart';
import 'get_serverless_security_policy_args.dart';
import 'get_serverless_security_policy_result.dart';

/// Use this data source to get information about an AWS OpenSearch Serverless Security Policy.
Future<GetServerlessSecurityPolicyResult> getServerlessSecurityPolicy(
  GetServerlessSecurityPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessSecurityPolicy:getServerlessSecurityPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerlessSecurityPolicyResult.fromMap(result);
}
