import 'package:pulumi/pulumi.dart';
import 'get_lake_contentitem_iam_policy_args.dart';
import 'get_lake_contentitem_iam_policy_result.dart';

/// Gets the access control policy for a contentitem resource. A NOT_FOUND error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.Caller must have Google IAM dataplex.content.getIamPolicy permission on the resource.
Future<GetLakeContentitemIamPolicyResult> getLakeContentitemIamPolicy(
  GetLakeContentitemIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeContentitemIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLakeContentitemIamPolicyResult.fromMap(result);
}
