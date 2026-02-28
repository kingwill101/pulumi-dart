// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_security_monitoring_condition_security_monitoring_condition_args_doc}
/// The set of arguments for SecurityMonitoringCondition.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_monitoring_condition_security_monitoring_condition_args_doc}
class SecurityMonitoringConditionArgs {
  /// Resource ID of the security monitoring condition.
  final pulumi.Input<String> conditionId;

  /// A nested object resource.
  final pulumi.Input<Map<String, dynamic>>? includeAllResources;

  /// The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// ID of security profile of the security monitoring condition.
  final pulumi.Input<String> profile;

  /// ID of security profile of the security monitoring condition.
  final pulumi.Input<String> scope;

  /// Creates a new [SecurityMonitoringConditionArgs].
  /// [conditionId] Resource ID of the security monitoring condition.
  /// [includeAllResources] A nested object resource.
  /// [orgId] The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// [profile] ID of security profile of the security monitoring condition.
  /// [scope] ID of security profile of the security monitoring condition.
  SecurityMonitoringConditionArgs({
    required String conditionId,
    Map<String, dynamic>? includeAllResources,
    required String orgId,
    required String profile,
    required String scope,
  })  : conditionId = pulumi.Input.asInput<String>(conditionId),
        includeAllResources =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(
                includeAllResources),
        orgId = pulumi.Input.asInput<String>(orgId),
        profile = pulumi.Input.asInput<String>(profile),
        scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditionId'] = conditionId;
    final includeAllResourcesValue = includeAllResources;
    if (includeAllResourcesValue != null) {
      map['includeAllResources'] = includeAllResourcesValue;
    }
    map['orgId'] = orgId;
    map['profile'] = profile;
    map['scope'] = scope;
    return map;
  }

  factory SecurityMonitoringConditionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityMonitoringConditionArgs(
      conditionId: map['conditionId'] as String,
      includeAllResources: map['includeAllResources'] == null
          ? null
          : (map['includeAllResources'] as Map).cast<String, dynamic>(),
      orgId: map['orgId'] as String,
      profile: map['profile'] as String,
      scope: map['scope'] as String,
    );
  }
}
