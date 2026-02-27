// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KxScalingGroup.
class KxScalingGroupArgs {
  /// The availability zone identifiers for the requested regions.
  final Input<String> availabilityZoneId;

  /// A unique identifier for the kdb environment, where you want to create the scaling group.
  final Input<String> environmentId;

  /// The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
  ///
  /// The following arguments are optional:
  final Input<String> hostType;

  /// Unique name for the scaling group that you want to create.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. You can add up to 50 tags to a scaling group.
  final Input<Map<String, String>>? tags;

  KxScalingGroupArgs({
    required this.availabilityZoneId,
    required this.environmentId,
    required this.hostType,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZoneId'] = availabilityZoneId;
    map['environmentId'] = environmentId;
    map['hostType'] = hostType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory KxScalingGroupArgs.fromMap(Map<String, dynamic> map) {
    return KxScalingGroupArgs(
      availabilityZoneId: Input.asInput<String>(map['availabilityZoneId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      hostType: Input.asInput<String>(map['hostType']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
