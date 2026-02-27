import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_args.dart';
import 'get_budget_result.dart';

/// Data source for managing an AWS Web Services Budgets Budget.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetBudgetResult> getBudget(
  GetBudgetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:budgets/getBudget:getBudget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBudgetResult.fromMap(result);
}
