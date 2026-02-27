import 'package:pulumi/pulumi.dart';
import 'get_constraint_args.dart';
import 'get_constraint_result.dart';

/// Provides information on a Service Catalog Constraint.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetConstraintResult> getConstraint(
  GetConstraintArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getConstraint:getConstraint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConstraintResult.fromMap(result);
}
