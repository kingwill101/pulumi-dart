// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_action.dart';
import 'lifecycle_policy_selection.dart';

/// Represents a rule in an ECR lifecycle policy.
class LifecyclePolicyRule {
  /// The action to take when the rule is triggered.
  final LifecyclePolicyAction action;

  /// A description of the rule.
  final String? description;

  /// The priority of the rule, must be unique within the policy.
  final int rulePriority;

  /// The selection criteria for the rule.
  final LifecyclePolicySelection selection;

  /// Creates a new [LifecyclePolicyRule].
  /// [action] The action to take when the rule is triggered.
  /// [description] A description of the rule.
  /// [rulePriority] The priority of the rule, must be unique within the policy.
  /// [selection] The selection criteria for the rule.
  LifecyclePolicyRule({
    required this.action,
    this.description,
    required this.rulePriority,
    required this.selection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'description': ?description,
      'rulePriority': rulePriority,
      'selection': selection.toMap(),
    };
  }

  factory LifecyclePolicyRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyRule(
      action: LifecyclePolicyAction.fromMap(
        (map['action'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      rulePriority: map['rulePriority'] as int,
      selection: LifecyclePolicySelection.fromMap(
        (map['selection'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
