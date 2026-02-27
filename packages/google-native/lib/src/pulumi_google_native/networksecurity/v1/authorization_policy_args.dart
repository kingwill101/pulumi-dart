// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_action.dart';
import 'rule_networksecurity_v1.dart';

/// The set of arguments for AuthorizationPolicy.
class AuthorizationPolicyArgs {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  final pulumi.Input<AuthorizationPolicyAction> action;

  /// Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  final pulumi.Input<String> authorizationPolicyId;

  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Optional. Set of label tags associated with the AuthorizationPolicy resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  final pulumi.Input<List<RuleNetworksecurityV1>>? rules;

  AuthorizationPolicyArgs({
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
    map['action'] =
        pulumi.Input.mapInputValue<AuthorizationPolicyAction, String>(
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
      map['rules'] = pulumi.Input.mapOptionalInputValue<
              List<RuleNetworksecurityV1>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<RuleNetworksecurityV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory AuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyArgs(
      action: pulumi.Input.asInput<AuthorizationPolicyAction>(map['action']),
      authorizationPolicyId:
          pulumi.Input.asInput<String>(map['authorizationPolicyId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rules: pulumi.Input.asOptionalInput<List<RuleNetworksecurityV1>>(
          map['rules']),
    );
  }
}
