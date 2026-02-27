import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_constraint_args.dart';
import 'get_constraint_result.dart';

/// Provides information on a Service Catalog Constraint.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetConstraintResult> getConstraint(
  GetConstraintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getConstraint:getConstraint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConstraintResult.fromMap(result);
}
