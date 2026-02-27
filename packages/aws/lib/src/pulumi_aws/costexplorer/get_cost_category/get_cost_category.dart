import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_args.dart';
import 'get_cost_category_result.dart';

/// Provides details about a specific CostExplorer Cost Category.
Future<GetCostCategoryResult> getCostCategory(
  GetCostCategoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:costexplorer/getCostCategory:getCostCategory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCostCategoryResult.fromMap(result);
}
