import 'package:pulumi/pulumi.dart';
import 'get_namespace_service_iam_policy_args2.dart';
import 'get_namespace_service_iam_policy_result2.dart';

/// Gets the IAM Policy for a resource
Future<GetNamespaceServiceIamPolicyResult2> getNamespaceServiceIamPolicy2(
  GetNamespaceServiceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServiceIamPolicyResult2.fromMap(result);
}
