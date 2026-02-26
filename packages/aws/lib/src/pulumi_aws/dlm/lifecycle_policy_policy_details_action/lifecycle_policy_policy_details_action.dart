// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_policy_details_action_cross_region_copy/lifecycle_policy_policy_details_action_cross_region_copy.dart';

class LifecyclePolicyPolicyDetailsAction {
  /// The rule for copying shared snapshots across Regions. See the <span pulumi-lang-nodejs="`crossRegionCopy`" pulumi-lang-dotnet="`CrossRegionCopy`" pulumi-lang-go="`crossRegionCopy`" pulumi-lang-python="`cross_region_copy`" pulumi-lang-yaml="`crossRegionCopy`" pulumi-lang-java="`crossRegionCopy`">`cross_region_copy`</span> configuration block.
  final List<LifecyclePolicyPolicyDetailsActionCrossRegionCopy>
      crossRegionCopies;
  final String name;

  LifecyclePolicyPolicyDetailsAction({
    required this.crossRegionCopies,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['crossRegionCopies'] = Input.encodeList<
        LifecyclePolicyPolicyDetailsActionCrossRegionCopy,
        Map<String, dynamic>>(crossRegionCopies, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory LifecyclePolicyPolicyDetailsAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsAction(
      crossRegionCopies:
          Input.decodeList<LifecyclePolicyPolicyDetailsActionCrossRegionCopy>(
              map['crossRegionCopies'],
              (value) =>
                  LifecyclePolicyPolicyDetailsActionCrossRegionCopy.fromMap(
                      (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
