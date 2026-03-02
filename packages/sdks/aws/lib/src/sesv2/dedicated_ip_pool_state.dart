// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedIpPool resources.
class DedicatedIpPoolState {
  /// ARN of the Dedicated IP Pool.
  final pulumi.Input<String>? arn;
  /// Name of the dedicated IP pool.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? poolName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  final pulumi.Input<String>? scalingMode;
  /// A map of tags to assign to the pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DedicatedIpPoolState].
  /// [arn] ARN of the Dedicated IP Pool.
  /// [poolName] Name of the dedicated IP pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingMode] IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  /// [tags] A map of tags to assign to the pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  DedicatedIpPoolState({
    this.arn,
    this.poolName,
    this.region,
    this.scalingMode,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'poolName': ?poolName,
      'region': ?region,
      'scalingMode': ?scalingMode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DedicatedIpPoolState.fromMap(Map<String, dynamic> map) {
    return DedicatedIpPoolState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      poolName: map['poolName'] == null ? null : (map['poolName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scalingMode: map['scalingMode'] == null ? null : (map['scalingMode'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

