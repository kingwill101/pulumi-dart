// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchedulerRuleRule {
  /// The priority of the rule.
  final pulumi.Input<int>? priority;
  /// The region where the interaction resource that is used in the scheduling rule is deployed. **NOTE:** This parameter is returned only if the RuleType parameter is set to 2.
  final pulumi.Input<String>? regionId;
  /// The status of the scheduling rule.
  final pulumi.Input<int>? status;
  /// The address type of the interaction resource. Valid values:
  /// `A`: IPv4 address.
  /// `CNAME`: CNAME record.
  final pulumi.Input<String>? type;
  /// The address of the interaction resource.
  final pulumi.Input<String>? value;
  /// Required. The type of the linked resource. It is an Integer. Valid values:
  /// `1`: The IP address of Anti-DDoS Pro or Anti-DDoS Premium
  /// `2`: the IP address of the interaction resource (in the tiered protection scenario)
  /// `3`: the IP address used to accelerate access (in the network acceleration scenario)
  /// `6` the IP address of the interaction resource (in the cloud service interaction scenario)
  final pulumi.Input<int>? valueType;

  /// Creates a new [SchedulerRuleRule].
  /// [priority] The priority of the rule.
  /// [regionId] The region where the interaction resource that is used in the scheduling rule is deployed. **NOTE:** This parameter is returned only if the RuleType parameter is set to 2.
  /// [status] The status of the scheduling rule.
  /// [type] The address type of the interaction resource. Valid values:
  /// [value] The address of the interaction resource.
  /// [valueType] Required. The type of the linked resource. It is an Integer. Valid values:
  SchedulerRuleRule({
    this.priority,
    this.regionId,
    this.status,
    this.type,
    this.value,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': ?priority,
      'regionId': ?regionId,
      'status': ?status,
      'type': ?type,
      'value': ?value,
      'valueType': ?valueType,
    };
  }

  factory SchedulerRuleRule.fromMap(Map<String, dynamic> map) {
    return SchedulerRuleRule(
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      valueType: map['valueType'] == null ? null : (map['valueType'] as int).input(),
    );
  }
}

