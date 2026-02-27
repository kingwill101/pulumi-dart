import 'package:pulumi/pulumi.dart' hide Config;
import 'get_budget_args.dart';
import 'get_budget_result.dart';

/// Returns a budget. WARNING: There are some fields exposed on the Google Cloud Console that aren't available on this API. When reading from the API, you will not see these fields in the return value, though they may have been set in the Cloud Console.
Future<GetBudgetResult> getBudget(
  GetBudgetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:billingbudgets/v1:getBudget',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBudgetResult.fromMap(result);
}
