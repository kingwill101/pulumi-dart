// ignore_for_file: unused_element, unnecessary_cast

import 'task_definition_port_mapping_app_protocol.dart';
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

class TaskDefinitionPortMapping {
  final TaskDefinitionPortMappingAppProtocol? appProtocol;
  final int? containerPort;
  final String? containerPortRange;
  final int? hostPort;
  final String? name;
  final String? protocol;
  final pulumi_aws_lb.TargetGroup? targetGroup;

  /// Creates a new [TaskDefinitionPortMapping].
  /// [appProtocol] Optional.
  /// [containerPort] Optional.
  /// [containerPortRange] Optional.
  /// [hostPort] Optional.
  /// [name] Optional.
  /// [protocol] Optional.
  /// [targetGroup] Optional.
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
    return <String, dynamic>{
      'appProtocol': ?appProtocol == null ? null : appProtocol!.value,
      'containerPort': ?containerPort,
      'containerPortRange': ?containerPortRange,
      'hostPort': ?hostPort,
      'name': ?name,
      'protocol': ?protocol,
      'targetGroup': ?targetGroup,
    };
  }

  factory TaskDefinitionPortMapping.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionPortMapping(
      appProtocol: map['appProtocol'] == null ? null : TaskDefinitionPortMappingAppProtocol.fromValue(map['appProtocol'] as String),
      containerPort: map['containerPort'] == null ? null : map['containerPort'] as int,
      containerPortRange: map['containerPortRange'] == null ? null : map['containerPortRange'] as String,
      hostPort: map['hostPort'] == null ? null : map['hostPort'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      targetGroup: map['targetGroup'] == null ? null : map['targetGroup'] as pulumi_aws_lb.TargetGroup,
    );
  }
}

