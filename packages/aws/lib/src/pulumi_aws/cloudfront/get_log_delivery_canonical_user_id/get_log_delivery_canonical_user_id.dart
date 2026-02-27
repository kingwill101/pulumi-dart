import 'package:pulumi/pulumi.dart';
import 'get_log_delivery_canonical_user_id_args.dart';
import 'get_log_delivery_canonical_user_id_result.dart';

/// The CloudFront Log Delivery Canonical User ID data source allows access to the [canonical user ID](http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html) of the AWS `awslogsdelivery` account for CloudFront bucket logging.
/// See the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html) for more information.
Future<GetLogDeliveryCanonicalUserIdResult> getLogDeliveryCanonicalUserId(
  GetLogDeliveryCanonicalUserIdArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getLogDeliveryCanonicalUserId:getLogDeliveryCanonicalUserId',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLogDeliveryCanonicalUserIdResult.fromMap(result);
}
