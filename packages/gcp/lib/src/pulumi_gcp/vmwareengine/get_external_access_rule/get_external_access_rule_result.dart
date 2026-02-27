// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_external_access_rule_destination_ip_range/get_external_access_rule_destination_ip_range.dart';
import '../get_external_access_rule_source_ip_range/get_external_access_rule_source_ip_range.dart';

/// Result data returned by getExternalAccessRule.
class GetExternalAccessRuleResult {
  final String action;
  final String createTime;
  final String description;
  final List<GetExternalAccessRuleDestinationIpRange> destinationIpRanges;
  final List<String> destinationPorts;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipProtocol;
  final String name;
  final String parent;
  final int priority;
  final List<GetExternalAccessRuleSourceIpRange> sourceIpRanges;
  final List<String> sourcePorts;
  final String state;
  final String uid;
  final String updateTime;

  GetExternalAccessRuleResult({
    required this.action,
    required this.createTime,
    required this.description,
    required this.destinationIpRanges,
    required this.destinationPorts,
    required this.id,
    required this.ipProtocol,
    required this.name,
    required this.parent,
    required this.priority,
    required this.sourceIpRanges,
    required this.sourcePorts,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['createTime'] = createTime;
    map['description'] = description;
    map['destinationIpRanges'] = pulumi.Input.encodeList<
        GetExternalAccessRuleDestinationIpRange,
        Map<String, dynamic>>(destinationIpRanges, (value) => value.toMap());
    map['destinationPorts'] = destinationPorts;
    map['id'] = id;
    map['ipProtocol'] = ipProtocol;
    map['name'] = name;
    map['parent'] = parent;
    map['priority'] = priority;
    map['sourceIpRanges'] = pulumi.Input.encodeList<
        GetExternalAccessRuleSourceIpRange,
        Map<String, dynamic>>(sourceIpRanges, (value) => value.toMap());
    map['sourcePorts'] = sourcePorts;
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetExternalAccessRuleResult.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleResult(
      action: map['action'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      destinationIpRanges:
          pulumi.Input.decodeList<GetExternalAccessRuleDestinationIpRange>(
              map['destinationIpRanges'],
              (value) => GetExternalAccessRuleDestinationIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      destinationPorts: (map['destinationPorts'] as List).cast<String>(),
      id: map['id'] as String,
      ipProtocol: map['ipProtocol'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      priority: map['priority'] as int,
      sourceIpRanges:
          pulumi.Input.decodeList<GetExternalAccessRuleSourceIpRange>(
              map['sourceIpRanges'],
              (value) => GetExternalAccessRuleSourceIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourcePorts: (map['sourcePorts'] as List).cast<String>(),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
