import 'package:pulumi/pulumi.dart' hide Config;
import 'get_billing_account_args.dart';
import 'get_billing_account_result.dart';

/// Gets information about a billing account. The current authenticated user must be a [viewer of the billing account](https://cloud.google.com/billing/docs/how-to/billing-access).
Future<GetBillingAccountResult> getBillingAccount(
  GetBillingAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbilling/v1:getBillingAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountResult.fromMap(result);
}
