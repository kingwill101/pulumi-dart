import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_account_bucket_args.dart';
import 'get_billing_account_bucket_result.dart';

/// Gets a log bucket.
Future<GetBillingAccountBucketResult> getBillingAccountBucket(
  GetBillingAccountBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountBucketResult.fromMap(result);
}
