import 'package:pulumi/pulumi.dart' hide Config;
import 'get_namespace_workload_iam_policy_args.dart';
import 'get_namespace_workload_iam_policy_result.dart';

/// Gets the IAM Policy for a resource
Future<GetNamespaceWorkloadIamPolicyResult> getNamespaceWorkloadIamPolicy(
  GetNamespaceWorkloadIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceWorkloadIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceWorkloadIamPolicyResult.fromMap(result);
}
