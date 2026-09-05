// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_detail_action_include_resources.dart';

class LifecyclePolicyPolicyDetailAction {
  /// Specifies the resources that the lifecycle policy applies to. Detailed below.
  final pulumi.Input<LifecyclePolicyPolicyDetailActionIncludeResources?>? includeResources;
  /// Specifies the lifecycle action to take. Valid values: `DELETE`, `DEPRECATE` or `DISABLE`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [LifecyclePolicyPolicyDetailAction].
  /// [includeResources] Specifies the resources that the lifecycle policy applies to. Detailed below.
  /// [type] Specifies the lifecycle action to take. Valid values: `DELETE`, `DEPRECATE` or `DISABLE`.
  const LifecyclePolicyPolicyDetailAction({
    this.includeResources,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeResources': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailActionIncludeResources, Map<String, dynamic>>(includeResources, (value) => value.toMap()),
      'type': type,
    };
  }

  factory LifecyclePolicyPolicyDetailAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailAction(
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailActionIncludeResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
