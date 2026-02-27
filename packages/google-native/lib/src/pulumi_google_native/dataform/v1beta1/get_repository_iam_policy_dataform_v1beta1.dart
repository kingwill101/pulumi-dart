import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_iam_policy_dataform_v1beta1_args.dart';
import 'get_repository_iam_policy_dataform_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRepositoryIamPolicyDataformV1beta1Result>
    getRepositoryIamPolicyDataformV1beta1(
  GetRepositoryIamPolicyDataformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyDataformV1beta1Result.fromMap(result);
}
