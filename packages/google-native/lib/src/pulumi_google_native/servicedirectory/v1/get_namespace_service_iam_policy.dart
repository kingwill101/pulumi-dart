import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespace_service_iam_policy_args.dart';
import 'get_namespace_service_iam_policy_result.dart';

/// Gets the IAM Policy for a resource (namespace or service only).
Future<GetNamespaceServiceIamPolicyResult> getNamespaceServiceIamPolicy(
  GetNamespaceServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getNamespaceServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServiceIamPolicyResult.fromMap(result);
}
