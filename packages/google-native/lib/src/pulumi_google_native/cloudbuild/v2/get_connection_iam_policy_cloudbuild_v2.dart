import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_iam_policy_cloudbuild_v2_args.dart';
import 'get_connection_iam_policy_cloudbuild_v2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionIamPolicyCloudbuildV2Result>
    getConnectionIamPolicyCloudbuildV2(
  GetConnectionIamPolicyCloudbuildV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbuild/v2:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyCloudbuildV2Result.fromMap(result);
}
