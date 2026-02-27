import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args2.dart';
import 'get_repository_iam_policy_result2.dart';

Future<GetRepositoryIamPolicyResult2> getRepositoryIamPolicy2(
  GetRepositoryIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataform/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult2.fromMap(result);
}
