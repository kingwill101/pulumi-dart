import 'package:pulumi/pulumi.dart' hide Config;
import 'get_os_policy_assignment_args2.dart';
import 'get_os_policy_assignment_result2.dart';

/// Retrieve an existing OS policy assignment. This method always returns the latest revision. In order to retrieve a previous revision of the assignment, also provide the revision ID in the `name` parameter.
Future<GetOsPolicyAssignmentResult2> getOsPolicyAssignment2(
  GetOsPolicyAssignmentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:osconfig/v1alpha:getOsPolicyAssignment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOsPolicyAssignmentResult2.fromMap(result);
}
