// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_gateway_security_policy_rule_gateway_security_policy_rule_args_doc}
/// The set of arguments for GatewaySecurityPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_gateway_security_policy_rule_gateway_security_policy_rule_args_doc}
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

  /// Creates a new [GatewaySecurityPolicyRuleArgs].
  /// [applicationMatcher] CEL expression for matching on L7/application level criteria.
  /// [basicProfile] Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// [description] Free-text description of the resource.
  /// [enabled] Whether the rule is enforced.
  /// [gatewaySecurityPolicy] The name of the gatewat security policy this rule belongs to.
  /// [location] The location of the gateway security policy.
  /// [name] Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// [priority] Priority of the rule. Lower number corresponds to higher precedence.
  /// [project] The ID of the project in which the resource belongs.
  /// [sessionMatcher] CEL expression for matching on session criteria.
  /// [tlsInspectionEnabled] Flag to enable TLS inspection of traffic matching on. Can only be true if the
  GatewaySecurityPolicyRuleArgs({
    String? applicationMatcher,
    required String basicProfile,
    String? description,
    required bool enabled,
    required String gatewaySecurityPolicy,
    required String location,
    String? name,
    required int priority,
    String? project,
    required String sessionMatcher,
    bool? tlsInspectionEnabled,
  })  : applicationMatcher =
            pulumi.Input.asOptionalInput<String>(applicationMatcher),
        basicProfile = pulumi.Input.asInput<String>(basicProfile),
        description = pulumi.Input.asOptionalInput<String>(description),
        enabled = pulumi.Input.asInput<bool>(enabled),
        gatewaySecurityPolicy =
            pulumi.Input.asInput<String>(gatewaySecurityPolicy),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        priority = pulumi.Input.asInput<int>(priority),
        project = pulumi.Input.asOptionalInput<String>(project),
        sessionMatcher = pulumi.Input.asInput<String>(sessionMatcher),
        tlsInspectionEnabled =
            pulumi.Input.asOptionalInput<bool>(tlsInspectionEnabled);

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
      applicationMatcher: map['applicationMatcher'] == null
          ? null
          : map['applicationMatcher'] as String,
      basicProfile: map['basicProfile'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] as bool,
      gatewaySecurityPolicy: map['gatewaySecurityPolicy'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      sessionMatcher: map['sessionMatcher'] as String,
      tlsInspectionEnabled: map['tlsInspectionEnabled'] == null
          ? null
          : map['tlsInspectionEnabled'] as bool,
    );
  }
}
