import 'package:pulumi/pulumi.dart' hide Config;
import 'get_namespace_iam_policy_args2.dart';
import 'get_namespace_iam_policy_result2.dart';

/// Gets the IAM Policy for a resource
Future<GetNamespaceIamPolicyResult2> getNamespaceIamPolicy2(
  GetNamespaceIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIamPolicyResult2.fromMap(result);
}
