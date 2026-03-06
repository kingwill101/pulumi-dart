// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_spot_datafeed_subscription_spot_datafeed_subscription_args_doc}
/// The set of arguments for SpotDatafeedSubscription.
/// {@endtemplate}
/// {@macro pulumi_ec2_spot_datafeed_subscription_spot_datafeed_subscription_args_doc}
class SpotDatafeedSubscriptionArgs {
  /// The Amazon S3 bucket in which to store the Spot instance data feed.
  final pulumi.Input<String> bucket;
  /// Path of folder inside bucket to place spot pricing data.
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SpotDatafeedSubscriptionArgs].
  /// [bucket] The Amazon S3 bucket in which to store the Spot instance data feed.
  /// [prefix] Path of folder inside bucket to place spot pricing data.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const SpotDatafeedSubscriptionArgs({
    required this.bucket,
    this.prefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'prefix': ?prefix,
      'region': ?region,
    };
  }

  factory SpotDatafeedSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SpotDatafeedSubscriptionArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

