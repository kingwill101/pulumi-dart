import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_os_policy_assignment_osconfig_v1alpha_args.dart';
import 'get_os_policy_assignment_osconfig_v1alpha_result.dart';

/// Retrieve an existing OS policy assignment. This method always returns the latest revision. In order to retrieve a previous revision of the assignment, also provide the revision ID in the `name` parameter.
Future<GetOsPolicyAssignmentOsconfigV1alphaResult>
    getOsPolicyAssignmentOsconfigV1alpha(
  GetOsPolicyAssignmentOsconfigV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1alpha:getOsPolicyAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOsPolicyAssignmentOsconfigV1alphaResult.fromMap(result);
}
