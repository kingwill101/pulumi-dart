// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_action_cross_region_copy.dart';

class LifecyclePolicyPolicyDetailsAction {
  /// The rule for copying shared snapshots across Regions. See the `cross_region_copy` configuration block.
  final pulumi.Input<List<LifecyclePolicyPolicyDetailsActionCrossRegionCopy>>
  crossRegionCopies;
  final pulumi.Input<String> name;

  /// Creates a new [LifecyclePolicyPolicyDetailsAction].
  /// [crossRegionCopies] The rule for copying shared snapshots across Regions. See the `cross_region_copy` configuration block.
  /// [name] Required.
  LifecyclePolicyPolicyDetailsAction({
    required this.crossRegionCopies,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionCopies':
          pulumi.Input.mapInputValue<
            List<LifecyclePolicyPolicyDetailsActionCrossRegionCopy>,
            List<Map<String, dynamic>>
          >(
            crossRegionCopies,
            (value) =>
                pulumi.Input.encodeList<
                  LifecyclePolicyPolicyDetailsActionCrossRegionCopy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
    };
  }

  factory LifecyclePolicyPolicyDetailsAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsAction(
      crossRegionCopies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          LifecyclePolicyPolicyDetailsActionCrossRegionCopy
        >(
          map['crossRegionCopies']!,
          (value) => LifecyclePolicyPolicyDetailsActionCrossRegionCopy.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
