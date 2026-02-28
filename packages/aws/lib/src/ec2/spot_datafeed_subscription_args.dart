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
  SpotDatafeedSubscriptionArgs({
    required String bucket,
    String? prefix,
    String? region,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        prefix = pulumi.Input.asOptionalInput<String>(prefix),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory SpotDatafeedSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SpotDatafeedSubscriptionArgs(
      bucket: map['bucket'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
