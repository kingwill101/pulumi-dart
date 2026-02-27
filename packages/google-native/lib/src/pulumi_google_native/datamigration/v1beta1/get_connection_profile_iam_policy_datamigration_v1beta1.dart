import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_profile_iam_policy_datamigration_v1beta1_args.dart';
import 'get_connection_profile_iam_policy_datamigration_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectionProfileIamPolicyDatamigrationV1beta1Result>
    getConnectionProfileIamPolicyDatamigrationV1beta1(
  GetConnectionProfileIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getConnectionProfileIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionProfileIamPolicyDatamigrationV1beta1Result.fromMap(
      result);
}
