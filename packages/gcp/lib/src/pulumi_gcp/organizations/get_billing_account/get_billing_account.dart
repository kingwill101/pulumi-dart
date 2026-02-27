import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_account_args.dart';
import 'get_billing_account_result.dart';

/// Use this data source to get information about a Google Billing Account.
Future<GetBillingAccountResult> getBillingAccount(
  GetBillingAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getBillingAccount:getBillingAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountResult.fromMap(result);
}
