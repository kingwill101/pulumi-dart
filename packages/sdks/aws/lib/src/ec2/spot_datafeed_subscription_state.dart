// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpotDatafeedSubscription resources.
class SpotDatafeedSubscriptionState {
  /// The Amazon S3 bucket in which to store the Spot instance data feed.
  final pulumi.Input<String>? bucket;
  /// Path of folder inside bucket to place spot pricing data.
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SpotDatafeedSubscriptionState].
  /// [bucket] The Amazon S3 bucket in which to store the Spot instance data feed.
  /// [prefix] Path of folder inside bucket to place spot pricing data.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const SpotDatafeedSubscriptionState({
    this.bucket,
    this.prefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'prefix': ?prefix,
      'region': ?region,
    };
  }

  factory SpotDatafeedSubscriptionState.fromMap(Map<String, dynamic> map) {
    return SpotDatafeedSubscriptionState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
