// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'rule_basic_profile.dart';

/// The set of arguments for Rule.
class RuleArgs {
  /// Optional. CEL expression for matching on L7/application level criteria.
  final Input<String>? applicationMatcher;

  /// Profile which tells what the primitive action should be.
  final Input<RuleBasicProfile> basicProfile;

  /// Optional. Free-text description of the resource.
  final Input<String>? description;

  /// Whether the rule is enforced.
  final Input<bool> enabled;
  final Input<String> gatewaySecurityPolicyId;

  /// The ID to use for the rule, which will become the final component of the rule's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  final Input<String>? gatewaySecurityPolicyRuleId;
  final Input<String>? location;

  /// Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final Input<String> name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  final Input<int> priority;
  final Input<String>? project;

  /// CEL expression for matching on session criteria.
  final Input<String> sessionMatcher;

  /// Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final Input<bool>? tlsInspectionEnabled;

  RuleArgs({
    this.applicationMatcher,
    required this.basicProfile,
    this.description,
    required this.enabled,
    required this.gatewaySecurityPolicyId,
    this.gatewaySecurityPolicyRuleId,
    this.location,
    required this.name,
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
    map['basicProfile'] = Input.mapInputValue<RuleBasicProfile, String>(
        basicProfile, (value) => value.value);
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['enabled'] = enabled;
    map['gatewaySecurityPolicyId'] = gatewaySecurityPolicyId;
    final gatewaySecurityPolicyRuleIdValue = gatewaySecurityPolicyRuleId;
    if (gatewaySecurityPolicyRuleIdValue != null) {
      map['gatewaySecurityPolicyRuleId'] = gatewaySecurityPolicyRuleIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
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

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      applicationMatcher:
          Input.asOptionalInput<String>(map['applicationMatcher']),
      basicProfile: Input.asInput<RuleBasicProfile>(map['basicProfile']),
      description: Input.asOptionalInput<String>(map['description']),
      enabled: Input.asInput<bool>(map['enabled']),
      gatewaySecurityPolicyId:
          Input.asInput<String>(map['gatewaySecurityPolicyId']),
      gatewaySecurityPolicyRuleId:
          Input.asOptionalInput<String>(map['gatewaySecurityPolicyRuleId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      priority: Input.asInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionMatcher: Input.asInput<String>(map['sessionMatcher']),
      tlsInspectionEnabled:
          Input.asOptionalInput<bool>(map['tlsInspectionEnabled']),
    );
  }
}
