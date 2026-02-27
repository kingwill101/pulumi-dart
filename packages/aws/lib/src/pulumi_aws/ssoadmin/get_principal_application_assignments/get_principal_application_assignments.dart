import 'package:pulumi/pulumi.dart';
import 'get_principal_application_assignments_args.dart';
import 'get_principal_application_assignments_result.dart';

/// Data source for viewing AWS SSO Admin Principal Application Assignments.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetPrincipalApplicationAssignmentsResult>
    getPrincipalApplicationAssignments(
  GetPrincipalApplicationAssignmentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPrincipalApplicationAssignments:getPrincipalApplicationAssignments',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrincipalApplicationAssignmentsResult.fromMap(result);
}
