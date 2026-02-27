import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lake_iam_policy_args.dart';
import 'get_lake_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetLakeIamPolicyResult> getLakeIamPolicy(
  GetLakeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getLakeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeIamPolicyResult.fromMap(result);
}
