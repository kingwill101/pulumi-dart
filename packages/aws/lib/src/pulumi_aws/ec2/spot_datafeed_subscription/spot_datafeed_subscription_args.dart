// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SpotDatafeedSubscription.
class SpotDatafeedSubscriptionArgs {
  /// The Amazon S3 bucket in which to store the Spot instance data feed.
  final pulumi.Input<String> bucket;

  /// Path of folder inside bucket to place spot pricing data.
  final pulumi.Input<String>? prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  SpotDatafeedSubscriptionArgs({
    required this.bucket,
    this.prefix,
    this.region,
  });

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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      prefix: pulumi.Input.asOptionalInput<String>(map['prefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
