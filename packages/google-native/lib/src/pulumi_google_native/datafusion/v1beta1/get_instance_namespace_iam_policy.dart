import 'package:pulumi/pulumi.dart';
import 'get_instance_namespace_iam_policy_args.dart';
import 'get_instance_namespace_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceNamespaceIamPolicyResult> getInstanceNamespaceIamPolicy(
  GetInstanceNamespaceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datafusion/v1beta1:getInstanceNamespaceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceNamespaceIamPolicyResult.fromMap(result);
}
