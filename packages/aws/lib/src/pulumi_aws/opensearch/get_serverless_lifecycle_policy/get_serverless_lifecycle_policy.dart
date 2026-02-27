import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_lifecycle_policy_args.dart';
import 'get_serverless_lifecycle_policy_result.dart';

/// Data source for managing an AWS OpenSearch Serverless Lifecycle Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServerlessLifecyclePolicyResult> getServerlessLifecyclePolicy(
  GetServerlessLifecyclePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessLifecyclePolicy:getServerlessLifecyclePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessLifecyclePolicyResult.fromMap(result);
}
