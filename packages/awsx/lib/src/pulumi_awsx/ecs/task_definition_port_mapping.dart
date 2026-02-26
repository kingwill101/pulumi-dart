// ignore_for_file: unused_element, unnecessary_cast

import 'task_definition_port_mapping_app_protocol.dart';

class TaskDefinitionPortMapping {
  final TaskDefinitionPortMappingAppProtocol? appProtocol;
  final int? containerPort;
  final String? containerPortRange;
  final int? hostPort;
  final String? name;
  final String? protocol;
  final dynamic targetGroup;

  TaskDefinitionPortMapping({
    this.appProtocol,
    this.containerPort,
    this.containerPortRange,
    this.hostPort,
    this.name,
    this.protocol,
    this.targetGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appProtocolValue = appProtocol;
    if (appProtocolValue != null) {
      map['appProtocol'] = appProtocolValue.value;
    }
    final containerPortValue = containerPort;
    if (containerPortValue != null) {
      map['containerPort'] = containerPortValue;
    }
    final containerPortRangeValue = containerPortRange;
    if (containerPortRangeValue != null) {
      map['containerPortRange'] = containerPortRangeValue;
    }
    final hostPortValue = hostPort;
    if (hostPortValue != null) {
      map['hostPort'] = hostPortValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final targetGroupValue = targetGroup;
    if (targetGroupValue != null) {
      map['targetGroup'] = targetGroupValue;
    }
    return map;
  }

  factory TaskDefinitionPortMapping.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionPortMapping(
      appProtocol: map['appProtocol'] == null
          ? null
          : TaskDefinitionPortMappingAppProtocol.fromValue(
              map['appProtocol'] as String),
      containerPort:
          map['containerPort'] == null ? null : map['containerPort'] as int,
      containerPortRange: map['containerPortRange'] == null
          ? null
          : map['containerPortRange'] as String,
      hostPort: map['hostPort'] == null ? null : map['hostPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      targetGroup: map['targetGroup'] == null ? null : map['targetGroup'],
    );
  }
}
