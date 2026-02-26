import 'package:pulumi/pulumi.dart';
import 'get_namespace_service_iam_policy_args.dart';
import 'get_namespace_service_iam_policy_result.dart';

/// Gets the IAM Policy for a resource (namespace or service only).
Future<GetNamespaceServiceIamPolicyResult> getNamespaceServiceIamPolicy(
  GetNamespaceServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getNamespaceServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServiceIamPolicyResult.fromMap(result);
}
