// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SpotDatafeedSubscription.
class SpotDatafeedSubscriptionArgs {
  /// The Amazon S3 bucket in which to store the Spot instance data feed.
  final Input<String> bucket;

  /// Path of folder inside bucket to place spot pricing data.
  final Input<String>? prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      bucket: Input.asInput<String>(map['bucket']),
      prefix: Input.asOptionalInput<String>(map['prefix']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
