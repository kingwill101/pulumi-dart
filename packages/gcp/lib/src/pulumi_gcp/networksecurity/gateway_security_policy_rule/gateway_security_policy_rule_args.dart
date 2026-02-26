// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GatewaySecurityPolicyRule.
class GatewaySecurityPolicyRuleArgs {
  /// CEL expression for matching on L7/application level criteria.
  final Input<String>? applicationMatcher;

  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  final Input<String> basicProfile;

  /// Free-text description of the resource.
  final Input<String>? description;

  /// Whether the rule is enforced.
  final Input<bool> enabled;

  /// The name of the gatewat security policy this rule belongs to.
  final Input<String> gatewaySecurityPolicy;

  /// The location of the gateway security policy.
  final Input<String> location;

  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  final Input<String>? name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  final Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// CEL expression for matching on session criteria.
  final Input<String> sessionMatcher;

  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final Input<bool>? tlsInspectionEnabled;

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
          Input.asOptionalInput<String>(map['applicationMatcher']),
      basicProfile: Input.asInput<String>(map['basicProfile']),
      description: Input.asOptionalInput<String>(map['description']),
      enabled: Input.asInput<bool>(map['enabled']),
      gatewaySecurityPolicy:
          Input.asInput<String>(map['gatewaySecurityPolicy']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      priority: Input.asInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionMatcher: Input.asInput<String>(map['sessionMatcher']),
      tlsInspectionEnabled:
          Input.asOptionalInput<bool>(map['tlsInspectionEnabled']),
    );
  }
}
