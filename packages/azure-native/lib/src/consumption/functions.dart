import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_args.dart';
import 'get_budget_result.dart';

/// Gets the budget for the scope by budget name.
///
/// Uses Azure REST API version 2024-08-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native consumption [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_consumption_get_budget_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBudgetResult> getBudget(
  GetBudgetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:consumption:getBudget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBudgetResult.fromMap(result);
}
