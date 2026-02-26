// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecurityMonitoringCondition.
class SecurityMonitoringConditionArgs {
  /// Resource ID of the security monitoring condition.
  final Input<String> conditionId;

  /// A nested object resource.
  final Input<Map<String, dynamic>>? includeAllResources;

  /// The Apigee Organization associated with the Apigee Security Monitoring Condition,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// ID of security profile of the security monitoring condition.
  final Input<String> profile;

  /// ID of security profile of the security monitoring condition.
  final Input<String> scope;

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
      conditionId: Input.asInput<String>(map['conditionId']),
      includeAllResources: Input.asOptionalInput<Map<String, dynamic>>(
          map['includeAllResources']),
      orgId: Input.asInput<String>(map['orgId']),
      profile: Input.asInput<String>(map['profile']),
      scope: Input.asInput<String>(map['scope']),
    );
  }
}
