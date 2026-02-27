import 'package:pulumi/pulumi.dart' hide Config;
import 'get_billing_account_bucket_link_args.dart';
import 'get_billing_account_bucket_link_result.dart';

/// Gets a link.
Future<GetBillingAccountBucketLinkResult> getBillingAccountBucketLink(
  GetBillingAccountBucketLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getBillingAccountBucketLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountBucketLinkResult.fromMap(result);
}
