import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getPrincipalApplicationAssignments:getPrincipalApplicationAssignments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrincipalApplicationAssignmentsResult.fromMap(result);
}
