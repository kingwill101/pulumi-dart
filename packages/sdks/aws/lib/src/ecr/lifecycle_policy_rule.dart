// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_action.dart';
import 'lifecycle_policy_selection.dart';

/// Represents a rule in an ECR lifecycle policy.
class LifecyclePolicyRule {
  /// The action to take when the rule is triggered.
  final pulumi.Input<LifecyclePolicyAction> action;
  /// A description of the rule.
  final pulumi.Input<String>? description;
  /// The priority of the rule, must be unique within the policy.
  final pulumi.Input<int> rulePriority;
  /// The selection criteria for the rule.
  final pulumi.Input<LifecyclePolicySelection> selection;

  /// Creates a new [LifecyclePolicyRule].
  /// [action] The action to take when the rule is triggered.
  /// [description] A description of the rule.
  /// [rulePriority] The priority of the rule, must be unique within the policy.
  /// [selection] The selection criteria for the rule.
  const LifecyclePolicyRule({
    required this.action,
    this.description,
    required this.rulePriority,
    required this.selection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<LifecyclePolicyAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'description': ?description,
      'rulePriority': rulePriority,
      'selection': pulumi.Input.mapInputValue<LifecyclePolicySelection, Map<String, dynamic>>(selection, (value) => value.toMap()),
    };
  }

  factory LifecyclePolicyRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyRule(
      action: pulumi.Input.fromValue(LifecyclePolicyAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulePriority: pulumi.Input.fromValue(map['rulePriority'] as int),
      selection: pulumi.Input.fromValue(LifecyclePolicySelection.fromMap((map['selection']! as Map).cast<String, dynamic>())),
    );
  }
}

