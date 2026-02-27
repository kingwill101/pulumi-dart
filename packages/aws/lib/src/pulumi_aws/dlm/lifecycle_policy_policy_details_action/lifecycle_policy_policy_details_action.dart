// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../lifecycle_policy_policy_details_action_cross_region_copy/lifecycle_policy_policy_details_action_cross_region_copy.dart';

class LifecyclePolicyPolicyDetailsAction {
  /// The rule for copying shared snapshots across Regions. See the `cross_region_copy` configuration block.
  final List<LifecyclePolicyPolicyDetailsActionCrossRegionCopy>
      crossRegionCopies;
  final String name;

  LifecyclePolicyPolicyDetailsAction({
    required this.crossRegionCopies,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['crossRegionCopies'] = pulumi.Input.encodeList<
        LifecyclePolicyPolicyDetailsActionCrossRegionCopy,
        Map<String, dynamic>>(crossRegionCopies, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory LifecyclePolicyPolicyDetailsAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsAction(
      crossRegionCopies: pulumi.Input.decodeList<
              LifecyclePolicyPolicyDetailsActionCrossRegionCopy>(
          map['crossRegionCopies'],
          (value) => LifecyclePolicyPolicyDetailsActionCrossRegionCopy.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
