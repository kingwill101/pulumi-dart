// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_finspace_kx_scaling_group_kx_scaling_group_args_doc}
/// The set of arguments for KxScalingGroup.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_scaling_group_kx_scaling_group_args_doc}
class KxScalingGroupArgs {
  /// The availability zone identifiers for the requested regions.
  final pulumi.Input<String> availabilityZoneId;
  /// A unique identifier for the kdb environment, where you want to create the scaling group.
  final pulumi.Input<String> environmentId;
  /// The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> hostType;
  /// Unique name for the scaling group that you want to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KxScalingGroupArgs].
  /// [availabilityZoneId] The availability zone identifiers for the requested regions.
  /// [environmentId] A unique identifier for the kdb environment, where you want to create the scaling group.
  /// [hostType] The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  /// [name] Unique name for the scaling group that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  KxScalingGroupArgs({
    required pulumi.Output<String> availabilityZoneId,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> hostType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      availabilityZoneId = pulumi.Input.asInput<String>(availabilityZoneId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      hostType = pulumi.Input.asInput<String>(hostType),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': availabilityZoneId,
      'environmentId': environmentId,
      'hostType': hostType,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory KxScalingGroupArgs.fromMap(Map<String, dynamic> map) {
    return KxScalingGroupArgs(
      availabilityZoneId: pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      hostType: pulumi.Output.create<String>(map['hostType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

