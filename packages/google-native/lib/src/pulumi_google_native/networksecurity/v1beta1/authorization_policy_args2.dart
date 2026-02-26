// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'authorization_policy_action2.dart';
import 'rule7.dart';

/// The set of arguments for AuthorizationPolicy.
class AuthorizationPolicyArgs2 {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  final Input<AuthorizationPolicyAction2> action;

  /// Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  final Input<String> authorizationPolicyId;

  /// Optional. Free-text description of the resource.
  final Input<String>? description;

  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  final Input<List<Rule7>>? rules;

  AuthorizationPolicyArgs2({
    required this.action,
    required this.authorizationPolicyId,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = Input.mapInputValue<AuthorizationPolicyAction2, String>(
        action, (value) => value.value);
    map['authorizationPolicyId'] = authorizationPolicyId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] =
          Input.mapOptionalInputValue<List<Rule7>, List<Map<String, dynamic>>>(
              rulesValue,
              (value) => Input.encodeList<Rule7, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory AuthorizationPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyArgs2(
      action: Input.asInput<AuthorizationPolicyAction2>(map['action']),
      authorizationPolicyId:
          Input.asInput<String>(map['authorizationPolicyId']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rules: Input.asOptionalInput<List<Rule7>>(map['rules']),
    );
  }
}
