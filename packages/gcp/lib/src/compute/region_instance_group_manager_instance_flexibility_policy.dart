// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection.dart';

class RegionInstanceGroupManagerInstanceFlexibilityPolicy {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final List<
    RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection
  >?
  instanceSelections;

  /// Creates a new [RegionInstanceGroupManagerInstanceFlexibilityPolicy].
  /// [instanceSelections] Named instance selections configuring properties that the group will use when creating new VMs.
  RegionInstanceGroupManagerInstanceFlexibilityPolicy({
    this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelections': ?instanceSelections == null
          ? null
          : pulumi.Input.encodeList<
              RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection,
              Map<String, dynamic>
            >(instanceSelections!, (value) => value.toMap()),
    };
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicy(
      instanceSelections: map['instanceSelections'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection
            >(
              map['instanceSelections'],
              (value) =>
                  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
