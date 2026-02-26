// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<String> action;

  /// Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// Structure is documented below.
  final Input<AuthzPolicyCustomProvider>? customProvider;

  /// A human-readable description of the resource.
  final Input<String>? description;

  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  final Input<List<AuthzPolicyHttpRule>>? httpRules;

  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the resource.
  final Input<String> location;

  /// Identifier. Name of the AuthzPolicy resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Specifies the set of resources to which this policy should be applied to.
  /// Structure is documented below.
  final Input<AuthzPolicyTarget> target;

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
      map['customProvider'] = Input.mapOptionalInputValue<
          AuthzPolicyCustomProvider,
          Map<String, dynamic>>(customProviderValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final httpRulesValue = httpRules;
    if (httpRulesValue != null) {
      map['httpRules'] = Input.mapOptionalInputValue<List<AuthzPolicyHttpRule>,
              List<Map<String, dynamic>>>(
          httpRulesValue,
          (value) =>
              Input.encodeList<AuthzPolicyHttpRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
        Input.mapInputValue<AuthzPolicyTarget, Map<String, dynamic>>(
            target, (value) => value.toMap());
    return map;
  }

  factory AuthzPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyArgs(
      action: Input.asInput<String>(map['action']),
      customProvider: Input.asOptionalInput<AuthzPolicyCustomProvider>(
          map['customProvider']),
      description: Input.asOptionalInput<String>(map['description']),
      httpRules:
          Input.asOptionalInput<List<AuthzPolicyHttpRule>>(map['httpRules']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      target: Input.asInput<AuthzPolicyTarget>(map['target']),
    );
  }
}
