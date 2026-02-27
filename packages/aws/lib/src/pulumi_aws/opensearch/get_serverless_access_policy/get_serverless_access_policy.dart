import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_access_policy_args.dart';
import 'get_serverless_access_policy_result.dart';

/// Data source for managing an AWS OpenSearch Serverless Access Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServerlessAccessPolicyResult> getServerlessAccessPolicy(
  GetServerlessAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessAccessPolicy:getServerlessAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessAccessPolicyResult.fromMap(result);
}
