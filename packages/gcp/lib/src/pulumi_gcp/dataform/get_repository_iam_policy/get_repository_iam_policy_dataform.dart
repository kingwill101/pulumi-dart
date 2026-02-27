import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_iam_policy_dataform_args.dart';
import 'get_repository_iam_policy_dataform_result.dart';

Future<GetRepositoryIamPolicyDataformResult> getRepositoryIamPolicyDataform(
  GetRepositoryIamPolicyDataformArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataform/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyDataformResult.fromMap(result);
}
