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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? poolName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scalingMode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      poolName = pulumi.Input.asOptionalInput<String>(poolName),
      region = pulumi.Input.asOptionalInput<String>(region),
      scalingMode = pulumi.Input.asOptionalInput<String>(scalingMode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      poolName: map['poolName'] == null ? null : pulumi.Output.create<String>(map['poolName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scalingMode: map['scalingMode'] == null ? null : pulumi.Output.create<String>(map['scalingMode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

