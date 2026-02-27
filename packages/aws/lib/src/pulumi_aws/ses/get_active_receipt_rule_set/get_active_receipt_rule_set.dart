import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_active_receipt_rule_set_args.dart';
import 'get_active_receipt_rule_set_result.dart';

/// Retrieve the active SES receipt rule set
Future<GetActiveReceiptRuleSetResult> getActiveReceiptRuleSet(
  GetActiveReceiptRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getActiveReceiptRuleSet:getActiveReceiptRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActiveReceiptRuleSetResult.fromMap(result);
}
