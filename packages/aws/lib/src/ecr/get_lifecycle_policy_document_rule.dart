// ignore_for_file: unused_element, unnecessary_cast

import 'get_lifecycle_policy_document_rule_action.dart';
import 'get_lifecycle_policy_document_rule_selection.dart';

class GetLifecyclePolicyDocumentRule {
  /// Specifies the action to take.
  final GetLifecyclePolicyDocumentRuleAction? action;
  /// Describes the purpose of a rule within a lifecycle policy.
  final String? description;
  /// Sets the order in which rules are evaluated, lowest to highest. When you add rules to a lifecycle policy, you must give them each a unique value for `priority`. Values do not need to be sequential across rules in a policy. A rule with a `tag_status` value of `any` must have the highest value for `priority` and be evaluated last.
  final int priority;
  /// Collects parameters describing the selection criteria for the ECR lifecycle policy:
  final GetLifecyclePolicyDocumentRuleSelection selection;

  /// Creates a new [GetLifecyclePolicyDocumentRule].
  /// [action] Specifies the action to take.
  /// [description] Describes the purpose of a rule within a lifecycle policy.
  /// [priority] Sets the order in which rules are evaluated, lowest to highest. When you add rules to a lifecycle policy, you must give them each a unique value for `priority`. Values do not need to be sequential across rules in a policy. A rule with a `tag_status` value of `any` must have the highest value for `priority` and be evaluated last.
  /// [selection] Collects parameters describing the selection criteria for the ECR lifecycle policy:
  GetLifecyclePolicyDocumentRule({
    this.action,
    this.description,
    required this.priority,
    required this.selection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'description': ?description,
      'priority': priority,
      'selection': selection.toMap(),
    };
  }

  factory GetLifecyclePolicyDocumentRule.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentRule(
      action: map['action'] == null ? null : GetLifecyclePolicyDocumentRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      priority: map['priority'] as int,
      selection: GetLifecyclePolicyDocumentRuleSelection.fromMap((map['selection'] as Map).cast<String, dynamic>()),
    );
  }
}

