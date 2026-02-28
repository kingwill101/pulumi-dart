// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_action.dart';
import 'rule.dart';

/// {@template pulumi_networksecurity_v1_authorization_policy_args_doc}
/// The set of arguments for AuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_authorization_policy_args_doc}
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
  final pulumi.Input<List<Rule>>? rules;

  /// Creates a new [AuthorizationPolicyArgs].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [authorizationPolicyId] Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the AuthorizationPolicy resource.
  /// [location] Optional.
  /// [name] Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  /// [project] Optional.
  /// [rules] Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  AuthorizationPolicyArgs({
    required AuthorizationPolicyAction action,
    required String authorizationPolicyId,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    List<Rule>? rules,
  })  : action = pulumi.Input.asInput<AuthorizationPolicyAction>(action),
        authorizationPolicyId =
            pulumi.Input.asInput<String>(authorizationPolicyId),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        rules = pulumi.Input.asOptionalInput<List<Rule>>(rules);

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
      map['rules'] = pulumi.Input.mapOptionalInputValue<List<Rule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<Rule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory AuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyArgs(
      action: AuthorizationPolicyAction.fromValue(map['action'] as String),
      authorizationPolicyId: map['authorizationPolicyId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<Rule>(map['rules'],
              (value) => Rule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
