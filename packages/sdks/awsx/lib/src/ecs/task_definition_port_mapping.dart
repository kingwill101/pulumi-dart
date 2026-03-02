// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_port_mapping_app_protocol.dart';
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

class TaskDefinitionPortMapping {
  final pulumi.Input<TaskDefinitionPortMappingAppProtocol>? appProtocol;
  final pulumi.Input<int>? containerPort;
  final pulumi.Input<String>? containerPortRange;
  final pulumi.Input<int>? hostPort;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<pulumi_aws_lb.TargetGroup>? targetGroup;

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
      'appProtocol': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionPortMappingAppProtocol, String>(appProtocol, (value) => value.value),
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
      appProtocol: map['appProtocol'] == null ? null : (TaskDefinitionPortMappingAppProtocol.fromValue(map['appProtocol']! as String)).input(),
      containerPort: map['containerPort'] == null ? null : (map['containerPort']! as int).input(),
      containerPortRange: map['containerPortRange'] == null ? null : (map['containerPortRange']! as String).input(),
      hostPort: map['hostPort'] == null ? null : (map['hostPort']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      targetGroup: map['targetGroup'] == null ? null : (map['targetGroup']! as pulumi_aws_lb.TargetGroup).input(),
    );
  }
}

