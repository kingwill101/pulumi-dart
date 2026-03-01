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
  SpotDatafeedSubscriptionState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? region,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'prefix': ?prefix,
      'region': ?region,
    };
  }

  factory SpotDatafeedSubscriptionState.fromMap(Map<String, dynamic> map) {
    return SpotDatafeedSubscriptionState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

