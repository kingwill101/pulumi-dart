import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args4.dart';
import 'get_repository_iam_policy_result4.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRepositoryIamPolicyResult4> getRepositoryIamPolicy4(
  GetRepositoryIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult4.fromMap(result);
}
