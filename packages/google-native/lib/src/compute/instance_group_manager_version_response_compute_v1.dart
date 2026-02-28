// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_response_compute_v1.dart';

class InstanceGroupManagerVersionResponseComputeV1 {
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create new instances in the managed instance group until the `targetSize` for this version is reached. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE; in those cases, existing instances are updated until the `targetSize` for this version is reached.
  final String instanceTemplate;

  /// Name of the version. Unique among all versions in the scope of this managed instance group.
  final String name;

  /// Specifies the intended number of instances to be created from the instanceTemplate. The final number of instances created from the template will be equal to: - If expressed as a fixed number, the minimum of either targetSize.fixed or instanceGroupManager.targetSize is used. - if expressed as a percent, the targetSize would be (targetSize.percent/100 * InstanceGroupManager.targetSize) If there is a remainder, the number is rounded. If unset, this version will update any remaining instances not updated by another version. Read Starting a canary update for more information.
  final FixedOrPercentResponseComputeV1 targetSize;

  /// Creates a new [InstanceGroupManagerVersionResponseComputeV1].
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create new instances in the managed instance group until the `targetSize` for this version is reached. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE; in those cases, existing instances are updated until the `targetSize` for this version is reached.
  /// [name] Name of the version. Unique among all versions in the scope of this managed instance group.
  /// [targetSize] Specifies the intended number of instances to be created from the instanceTemplate. The final number of instances created from the template will be equal to: - If expressed as a fixed number, the minimum of either targetSize.fixed or instanceGroupManager.targetSize is used. - if expressed as a percent, the targetSize would be (targetSize.percent/100 * InstanceGroupManager.targetSize) If there is a remainder, the number is rounded. If unset, this version will update any remaining instances not updated by another version. Read Starting a canary update for more information.
  InstanceGroupManagerVersionResponseComputeV1({
    required this.instanceTemplate,
    required this.name,
    required this.targetSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    map['name'] = name;
    map['targetSize'] = targetSize.toMap();
    return map;
  }

  factory InstanceGroupManagerVersionResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerVersionResponseComputeV1(
      instanceTemplate: map['instanceTemplate'] as String,
      name: map['name'] as String,
      targetSize: FixedOrPercentResponseComputeV1.fromMap(
          (map['targetSize'] as Map).cast<String, dynamic>()),
    );
  }
}
