// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_instance_flexibility_policy_instance_selection.dart';

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicy {
  /// Named instance selections configuring properties that the group will use when creating new VMs.
  final List<
          GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection>
      instanceSelections;

  /// Creates a new [GetRegionInstanceGroupManagerInstanceFlexibilityPolicy].
  /// [instanceSelections] Named instance selections configuring properties that the group will use when creating new VMs.
  GetRegionInstanceGroupManagerInstanceFlexibilityPolicy({
    required this.instanceSelections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSelections'] = pulumi.Input.encodeList<
        GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection,
        Map<String, dynamic>>(instanceSelections, (value) => value.toMap());
    return map;
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicy(
      instanceSelections: pulumi.Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection>(
          map['instanceSelections'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
