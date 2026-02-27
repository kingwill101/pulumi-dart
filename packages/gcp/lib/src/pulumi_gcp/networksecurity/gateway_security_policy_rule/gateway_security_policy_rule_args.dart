// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GatewaySecurityPolicyRule.
class GatewaySecurityPolicyRuleArgs {
  /// CEL expression for matching on L7/application level criteria.
  final pulumi.Input<String>? applicationMatcher;

  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  final pulumi.Input<String> basicProfile;

  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Whether the rule is enforced.
  final pulumi.Input<bool> enabled;

  /// The name of the gatewat security policy this rule belongs to.
  final pulumi.Input<String> gatewaySecurityPolicy;

  /// The location of the gateway security policy.
  final pulumi.Input<String> location;

  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  final pulumi.Input<String>? name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  final pulumi.Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// CEL expression for matching on session criteria.
  final pulumi.Input<String> sessionMatcher;

  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final pulumi.Input<bool>? tlsInspectionEnabled;

  GatewaySecurityPolicyRuleArgs({
    this.applicationMatcher,
    required this.basicProfile,
    this.description,
    required this.enabled,
    required this.gatewaySecurityPolicy,
    required this.location,
    this.name,
    required this.priority,
    this.project,
    required this.sessionMatcher,
    this.tlsInspectionEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationMatcherValue = applicationMatcher;
    if (applicationMatcherValue != null) {
      map['applicationMatcher'] = applicationMatcherValue;
    }
    map['basicProfile'] = basicProfile;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['enabled'] = enabled;
    map['gatewaySecurityPolicy'] = gatewaySecurityPolicy;
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['priority'] = priority;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionMatcher'] = sessionMatcher;
    final tlsInspectionEnabledValue = tlsInspectionEnabled;
    if (tlsInspectionEnabledValue != null) {
      map['tlsInspectionEnabled'] = tlsInspectionEnabledValue;
    }
    return map;
  }

  factory GatewaySecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return GatewaySecurityPolicyRuleArgs(
      applicationMatcher:
          pulumi.Input.asOptionalInput<String>(map['applicationMatcher']),
      basicProfile: pulumi.Input.asInput<String>(map['basicProfile']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
      gatewaySecurityPolicy:
          pulumi.Input.asInput<String>(map['gatewaySecurityPolicy']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionMatcher: pulumi.Input.asInput<String>(map['sessionMatcher']),
      tlsInspectionEnabled:
          pulumi.Input.asOptionalInput<bool>(map['tlsInspectionEnabled']),
    );
  }
}
