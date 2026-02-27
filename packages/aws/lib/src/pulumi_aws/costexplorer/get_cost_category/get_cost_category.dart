import 'package:pulumi/pulumi.dart';
import 'get_cost_category_args.dart';
import 'get_cost_category_result.dart';

/// Provides details about a specific CostExplorer Cost Category.
Future<GetCostCategoryResult> getCostCategory(
  GetCostCategoryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:costexplorer/getCostCategory:getCostCategory',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCostCategoryResult.fromMap(result);
}
