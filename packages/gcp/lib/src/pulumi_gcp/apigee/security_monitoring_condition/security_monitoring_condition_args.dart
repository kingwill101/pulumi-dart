// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecurityMonitoringCondition.
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

  SecurityMonitoringConditionArgs({
    required this.conditionId,
    this.includeAllResources,
    required this.orgId,
    required this.profile,
    required this.scope,
  });

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
      conditionId: pulumi.Input.asInput<String>(map['conditionId']),
      includeAllResources: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['includeAllResources']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      profile: pulumi.Input.asInput<String>(map['profile']),
      scope: pulumi.Input.asInput<String>(map['scope']),
    );
  }
}
