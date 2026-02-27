import 'package:pulumi/pulumi.dart';
import 'get_application_assignments_args.dart';
import 'get_application_assignments_result.dart';

/// Data source for managing AWS SSO Admin Application Assignments.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetApplicationAssignmentsResult> getApplicationAssignments(
  GetApplicationAssignmentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplicationAssignments:getApplicationAssignments',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationAssignmentsResult.fromMap(result);
}
