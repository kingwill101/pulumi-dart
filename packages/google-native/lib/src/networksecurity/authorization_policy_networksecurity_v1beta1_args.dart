// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_action_networksecurity_v1beta1.dart';
import 'rule_resource.dart';

/// {@template pulumi_networksecurity_v1beta1_authorization_policy_networksecurity_v1beta1_args_doc}
/// The set of arguments for AuthorizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_authorization_policy_networksecurity_v1beta1_args_doc}
class AuthorizationPolicyNetworksecurityV1beta1Args {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  final pulumi.Input<AuthorizationPolicyActionNetworksecurityV1beta1> action;

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
  final pulumi.Input<List<RuleResource>>? rules;

  /// Creates a new [AuthorizationPolicyNetworksecurityV1beta1Args].
  /// [action] The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// [authorizationPolicyId] Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  /// [description] Optional. Free-text description of the resource.
  /// [labels] Optional. Set of label tags associated with the AuthorizationPolicy resource.
  /// [location] Optional.
  /// [name] Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  /// [project] Optional.
  /// [rules] Optional. List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken. A rule is a match if there is a matching source and destination. If left blank, the action specified in the `action` field will be applied on every request.
  AuthorizationPolicyNetworksecurityV1beta1Args({
    required AuthorizationPolicyActionNetworksecurityV1beta1 action,
    required String authorizationPolicyId,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    List<RuleResource>? rules,
  }) : action =
           pulumi.Input.asInput<
             AuthorizationPolicyActionNetworksecurityV1beta1
           >(action),
       authorizationPolicyId = pulumi.Input.asInput<String>(
         authorizationPolicyId,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       rules = pulumi.Input.asOptionalInput<List<RuleResource>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          pulumi.Input.mapInputValue<
            AuthorizationPolicyActionNetworksecurityV1beta1,
            String
          >(action, (value) => value.value),
      'authorizationPolicyId': authorizationPolicyId,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rules': ?rules,
    };
  }

  factory AuthorizationPolicyNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorizationPolicyNetworksecurityV1beta1Args(
      action: AuthorizationPolicyActionNetworksecurityV1beta1.fromValue(
        map['action'] as String,
      ),
      authorizationPolicyId: map['authorizationPolicyId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rules: map['rules'] == null
          ? null
          : (map['rules'] as List).cast<RuleResource>(),
    );
  }
}
