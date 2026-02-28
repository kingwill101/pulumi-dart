// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_detail_action_include_resources.dart';

class LifecyclePolicyPolicyDetailAction {
  /// Specifies the resources that the lifecycle policy applies to. Detailed below.
  final LifecyclePolicyPolicyDetailActionIncludeResources? includeResources;

  /// Specifies the lifecycle action to take. Valid values: `DELETE`, `DEPRECATE` or `DISABLE`.
  ///
  /// The following arguments are optional:
  final String type;

  /// Creates a new [LifecyclePolicyPolicyDetailAction].
  /// [includeResources] Specifies the resources that the lifecycle policy applies to. Detailed below.
  /// [type] Specifies the lifecycle action to take. Valid values: `DELETE`, `DEPRECATE` or `DISABLE`.
  LifecyclePolicyPolicyDetailAction({
    this.includeResources,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeResourcesValue = includeResources;
    if (includeResourcesValue != null) {
      map['includeResources'] = includeResourcesValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory LifecyclePolicyPolicyDetailAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailAction(
      includeResources: map['includeResources'] == null
          ? null
          : LifecyclePolicyPolicyDetailActionIncludeResources.fromMap(
              (map['includeResources'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
