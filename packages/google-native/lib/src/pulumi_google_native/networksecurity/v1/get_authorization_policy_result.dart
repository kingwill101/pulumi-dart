// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'rule_response6.dart';

/// Result data returned by getAuthorizationPolicy.
class GetAuthorizationPolicyResult {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  final String action;

  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. Free-text description of the resource.
  final String description;

  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  final Map<String, String> labels;

  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  final String name;

  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  final List<RuleResponse6> rules;

  /// The timestamp when the resource was updated.
  final String updateTime;

  GetAuthorizationPolicyResult({
    required this.action,
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.rules,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['name'] = name;
    map['rules'] = Input.encodeList<RuleResponse6, Map<String, dynamic>>(
        rules, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetAuthorizationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationPolicyResult(
      action: map['action'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      rules: Input.decodeList<RuleResponse6>(
          map['rules'],
          (value) =>
              RuleResponse6.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
