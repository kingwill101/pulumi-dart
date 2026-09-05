// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_finspace_kx_scaling_group_kx_scaling_group_args_doc}
/// The set of arguments for KxScalingGroup.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_scaling_group_kx_scaling_group_args_doc}
class KxScalingGroupArgs {
  /// Availability zone identifiers for the requested regions.
  final pulumi.Input<String> availabilityZoneId;
  /// Unique identifier for the kdb environment, where you want to create the scaling group.
  final pulumi.Input<String> environmentId;
  /// Memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  final pulumi.Input<String> hostType;
  /// Unique name for the scaling group that you want to create.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [KxScalingGroupArgs].
  /// [availabilityZoneId] Availability zone identifiers for the requested regions.
  /// [environmentId] Unique identifier for the kdb environment, where you want to create the scaling group.
  /// [hostType] Memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  /// [name] Unique name for the scaling group that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  const KxScalingGroupArgs({
    required this.availabilityZoneId,
    required this.environmentId,
    required this.hostType,
    this.name,
    this.region,
    this.tags,
  });

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
      availabilityZoneId: pulumi.Input.fromValue(map['availabilityZoneId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      hostType: pulumi.Input.fromValue(map['hostType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
