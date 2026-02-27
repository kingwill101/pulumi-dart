import 'package:pulumi/pulumi.dart';
import 'get_spot_datafeed_subscription_args.dart';
import 'get_spot_datafeed_subscription_result.dart';

/// > There is only a single spot data feed subscription per account.
///
/// Data source for accessing an AWS EC2 (Elastic Compute Cloud) spot data feed subscription.
Future<GetSpotDatafeedSubscriptionResult> getSpotDatafeedSubscription(
  GetSpotDatafeedSubscriptionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSpotDatafeedSubscription:getSpotDatafeedSubscription',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpotDatafeedSubscriptionResult.fromMap(result);
}
