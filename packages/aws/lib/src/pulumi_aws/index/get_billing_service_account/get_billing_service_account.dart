import 'package:pulumi/pulumi.dart';
import 'get_billing_service_account_args.dart';
import 'get_billing_service_account_result.dart';

/// Use this data source to get the Account ID of the [AWS Billing and Cost Management Service Account](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-getting-started.html#step-2) for the purpose of permitting in S3 bucket policy.
Future<GetBillingServiceAccountResult> getBillingServiceAccount(
  GetBillingServiceAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getBillingServiceAccount:getBillingServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingServiceAccountResult.fromMap(result);
}
