import 'package:pulumi/pulumi.dart';
import 'get_billing_account_args.dart';
import 'get_billing_account_result.dart';

/// Use this data source to get information about a Google Billing Account.
Future<GetBillingAccountResult> getBillingAccount(
  GetBillingAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getBillingAccount:getBillingAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountResult.fromMap(result);
}
