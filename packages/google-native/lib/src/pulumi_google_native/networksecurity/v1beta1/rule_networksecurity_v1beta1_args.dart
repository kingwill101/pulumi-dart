// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_basic_profile_networksecurity_v1beta1.dart';

/// The set of arguments for Rule.
class RuleNetworksecurityV1beta1Args {
  /// Optional. CEL expression for matching on L7/application level criteria.
  final pulumi.Input<String>? applicationMatcher;

  /// Profile which tells what the primitive action should be.
  final pulumi.Input<RuleBasicProfileNetworksecurityV1beta1> basicProfile;

  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Whether the rule is enforced.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> gatewaySecurityPolicyId;

  /// The ID to use for the rule, which will become the final component of the rule's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String>? gatewaySecurityPolicyRuleId;
  final pulumi.Input<String>? location;

  /// Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule} rule should match the pattern: (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final pulumi.Input<String> name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  final pulumi.Input<int> priority;
  final pulumi.Input<String>? project;

  /// CEL expression for matching on session criteria.
  final pulumi.Input<String> sessionMatcher;

  /// Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  final pulumi.Input<bool>? tlsInspectionEnabled;

  RuleNetworksecurityV1beta1Args({
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
    map['basicProfile'] = pulumi.Input.mapInputValue<
        RuleBasicProfileNetworksecurityV1beta1,
        String>(basicProfile, (value) => value.value);
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

  factory RuleNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return RuleNetworksecurityV1beta1Args(
      applicationMatcher:
          pulumi.Input.asOptionalInput<String>(map['applicationMatcher']),
      basicProfile:
          pulumi.Input.asInput<RuleBasicProfileNetworksecurityV1beta1>(
              map['basicProfile']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
      gatewaySecurityPolicyId:
          pulumi.Input.asInput<String>(map['gatewaySecurityPolicyId']),
      gatewaySecurityPolicyRuleId: pulumi.Input.asOptionalInput<String>(
          map['gatewaySecurityPolicyRuleId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionMatcher: pulumi.Input.asInput<String>(map['sessionMatcher']),
      tlsInspectionEnabled:
          pulumi.Input.asOptionalInput<bool>(map['tlsInspectionEnabled']),
    );
  }
}
