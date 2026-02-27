import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_account_bucket_view_args.dart';
import 'get_billing_account_bucket_view_result.dart';

/// Gets a view on a log bucket.
Future<GetBillingAccountBucketViewResult> getBillingAccountBucketView(
  GetBillingAccountBucketViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountBucketView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountBucketViewResult.fromMap(result);
}
