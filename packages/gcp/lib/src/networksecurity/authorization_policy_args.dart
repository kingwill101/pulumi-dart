// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_rule.dart';

/// {@template pulumi_networksecurity_authorization_policy_authorization_policy_args_doc}
/// The set of arguments for AuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_authorization_policy_authorization_policy_args_doc}
class AuthorizationPolicyArgs {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String> action;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Set of label tags associated with the AuthorizationPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the authorization policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// Name of the AuthorizationPolicy resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  /// A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request.
  /// Structure is documented below.
  final pulumi.Input<List<AuthorizationPolicyRule>>? rules;

  /// Creates a new [AuthorizationPolicyArgs].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Set of label tags associated with the AuthorizationPolicy resource.
  /// [location] The location of the authorization policy.
  /// [name] Name of the AuthorizationPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  AuthorizationPolicyArgs({
    required String action,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    List<AuthorizationPolicyRule>? rules,
  })  : action = pulumi.Input.asInput<String>(action),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        rules =
            pulumi.Input.asOptionalInput<List<AuthorizationPolicyRule>>(rules);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
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
              List<AuthorizationPolicyRule>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<AuthorizationPolicyRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory AuthorizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyArgs(
      action: map['action'] as String,
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
          : pulumi.Input.decodeList<AuthorizationPolicyRule>(
              map['rules'],
              (value) => AuthorizationPolicyRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
