import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_datafeed_subscription_args.dart';

/// > **Note:** There is only a single subscription allowed per account.
///
/// To help you understand the charges for your Spot instances, Amazon EC2 provides a data feed that describes your Spot instance usage and pricing.
/// This data feed is sent to an Amazon S3 bucket that you specify when you subscribe to the data feed.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a Spot Datafeed Subscription using the word `spot-datafeed-subscription`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/spotDatafeedSubscription:SpotDatafeedSubscription mysubscription spot-datafeed-subscription
/// ```
class SpotDatafeedSubscription extends pulumi.CustomResource {
  /// The Amazon S3 bucket in which to store the Spot instance data feed.
  late final pulumi.Output<String> bucket;

  /// Path of folder inside bucket to place spot pricing data.
  late final pulumi.Output<String?> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  SpotDatafeedSubscription(
    String name, {
    SpotDatafeedSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/spotDatafeedSubscription:SpotDatafeedSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.prefix = registerOutput<String?>('prefix');
    this.region = registerOutput<String>('region');
  }
}
