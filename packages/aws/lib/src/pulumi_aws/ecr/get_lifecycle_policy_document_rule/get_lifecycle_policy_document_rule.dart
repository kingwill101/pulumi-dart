// ignore_for_file: unused_element, unnecessary_cast

import '../get_lifecycle_policy_document_rule_action/get_lifecycle_policy_document_rule_action.dart';
import '../get_lifecycle_policy_document_rule_selection/get_lifecycle_policy_document_rule_selection.dart';

class GetLifecyclePolicyDocumentRule {
  /// Specifies the action to take.
  final GetLifecyclePolicyDocumentRuleAction? action;

  /// Describes the purpose of a rule within a lifecycle policy.
  final String? description;

  /// Sets the order in which rules are evaluated, lowest to highest. When you add rules to a lifecycle policy, you must give them each a unique value for <span pulumi-lang-nodejs="`priority`" pulumi-lang-dotnet="`Priority`" pulumi-lang-go="`priority`" pulumi-lang-python="`priority`" pulumi-lang-yaml="`priority`" pulumi-lang-java="`priority`">`priority`</span>. Values do not need to be sequential across rules in a policy. A rule with a <span pulumi-lang-nodejs="`tagStatus`" pulumi-lang-dotnet="`TagStatus`" pulumi-lang-go="`tagStatus`" pulumi-lang-python="`tag_status`" pulumi-lang-yaml="`tagStatus`" pulumi-lang-java="`tagStatus`">`tag_status`</span> value of <span pulumi-lang-nodejs="`any`" pulumi-lang-dotnet="`Any`" pulumi-lang-go="`any`" pulumi-lang-python="`any`" pulumi-lang-yaml="`any`" pulumi-lang-java="`any`">`any`</span> must have the highest value for <span pulumi-lang-nodejs="`priority`" pulumi-lang-dotnet="`Priority`" pulumi-lang-go="`priority`" pulumi-lang-python="`priority`" pulumi-lang-yaml="`priority`" pulumi-lang-java="`priority`">`priority`</span> and be evaluated last.
  final int priority;

  /// Collects parameters describing the selection criteria for the ECR lifecycle policy:
  final GetLifecyclePolicyDocumentRuleSelection selection;

  GetLifecyclePolicyDocumentRule({
    this.action,
    this.description,
    required this.priority,
    required this.selection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['priority'] = priority;
    map['selection'] = selection.toMap();
    return map;
  }

  factory GetLifecyclePolicyDocumentRule.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentRule(
      action: map['action'] == null
          ? null
          : GetLifecyclePolicyDocumentRuleAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      priority: map['priority'] as int,
      selection: GetLifecyclePolicyDocumentRuleSelection.fromMap(
          (map['selection'] as Map).cast<String, dynamic>()),
    );
  }
}
