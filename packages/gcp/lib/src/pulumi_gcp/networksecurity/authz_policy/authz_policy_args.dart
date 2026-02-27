// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../authz_policy_custom_provider/authz_policy_custom_provider.dart';
import '../authz_policy_http_rule/authz_policy_http_rule.dart';
import '../authz_policy_target/authz_policy_target.dart';

/// The set of arguments for AuthzPolicy.
class AuthzPolicyArgs {
  /// When the action is CUSTOM, customProvider must be specified.
  /// When the action is ALLOW, only requests matching the policy will be allowed.
  /// When the action is DENY, only requests matching the policy will be denied.
  /// When a request arrives, the policies are evaluated in the following order:
  /// 1. If there is a CUSTOM policy that matches the request, the CUSTOM policy is evaluated using the custom authorization providers and the request is denied if the provider rejects the request.
  /// 2. If there are any DENY policies that match the request, the request is denied.
  /// 3. If there are no ALLOW policies for the resource or if any of the ALLOW policies match the request, the request is allowed.
  /// 4. Else the request is denied by default if none of the configured AuthzPolicies with ALLOW action match the request.
  /// Possible values are: `ALLOW`, `DENY`, `CUSTOM`.
  final pulumi.Input<String> action;

  /// Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyCustomProvider>? customProvider;

  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRule>>? httpRules;

  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// Identifier. Name of the AuthzPolicy resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the set of resources to which this policy should be applied to.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyTarget> target;

  AuthzPolicyArgs({
    required this.action,
    this.customProvider,
    this.description,
    this.httpRules,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final customProviderValue = customProvider;
    if (customProviderValue != null) {
      map['customProvider'] = pulumi.Input.mapOptionalInputValue<
          AuthzPolicyCustomProvider,
          Map<String, dynamic>>(customProviderValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final httpRulesValue = httpRules;
    if (httpRulesValue != null) {
      map['httpRules'] = pulumi.Input.mapOptionalInputValue<
              List<AuthzPolicyHttpRule>, List<Map<String, dynamic>>>(
          httpRulesValue,
          (value) => pulumi.Input.encodeList<AuthzPolicyHttpRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['target'] =
        pulumi.Input.mapInputValue<AuthzPolicyTarget, Map<String, dynamic>>(
            target, (value) => value.toMap());
    return map;
  }

  factory AuthzPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyArgs(
      action: pulumi.Input.asInput<String>(map['action']),
      customProvider: pulumi.Input.asOptionalInput<AuthzPolicyCustomProvider>(
          map['customProvider']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      httpRules: pulumi.Input.asOptionalInput<List<AuthzPolicyHttpRule>>(
          map['httpRules']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      target: pulumi.Input.asInput<AuthzPolicyTarget>(map['target']),
    );
  }
}
