import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_iam_policy_args.dart';
import 'get_namespace_iam_policy_result.dart';

/// Retrieves the current IAM policy data for namespace
Future<GetNamespaceIamPolicyResult> getNamespaceIamPolicy(
  GetNamespaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicedirectory/getNamespaceIamPolicy:getNamespaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIamPolicyResult.fromMap(result);
}
