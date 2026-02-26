// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_instance_group_manager_instance_flexibility_policy_instance_selection/region_instance_group_manager_instance_flexibility_policy_instance_selection.dart';

class RegionInstanceGroupManagerInstanceFlexibilityPolicy {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final List<
          RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection>?
      instanceSelections;

  RegionInstanceGroupManagerInstanceFlexibilityPolicy({
    this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceSelectionsValue = instanceSelections;
    if (instanceSelectionsValue != null) {
      map['instanceSelections'] = Input.encodeList<
          RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection,
          Map<String,
              dynamic>>(instanceSelectionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicy(
      instanceSelections: map['instanceSelections'] == null
          ? null
          : Input.decodeList<
                  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection>(
              map['instanceSelections'],
              (value) =>
                  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
