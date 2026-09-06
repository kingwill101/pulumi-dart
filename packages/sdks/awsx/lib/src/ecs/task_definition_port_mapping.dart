// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_port_mapping_app_protocol.dart';
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

class TaskDefinitionPortMapping {
  final pulumi.Input<TaskDefinitionPortMappingAppProtocol?>? appProtocol;
  final pulumi.Input<int?>? containerPort;
  final pulumi.Input<String?>? containerPortRange;
  final pulumi.Input<int?>? hostPort;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? protocol;
  final pulumi.Input<pulumi_aws_lb.TargetGroup?>? targetGroup;

  /// Creates a new [TaskDefinitionPortMapping].
  /// [appProtocol] Optional.
  /// [containerPort] Optional.
  /// [containerPortRange] Optional.
  /// [hostPort] Optional.
  /// [name] Optional.
  /// [protocol] Optional.
  /// [targetGroup] Optional.
  const TaskDefinitionPortMapping({
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
      'appProtocol': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionPortMappingAppProtocol, String>(appProtocol, (value) => value.wireValue),
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
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskDefinitionPortMappingAppProtocol.fromValue(guardedValue as String)); })(),
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      containerPortRange: (() { final guardedValue = map['containerPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPort: (() { final guardedValue = map['hostPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGroup: (() { final guardedValue = map['targetGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as pulumi_aws_lb.TargetGroup); })(),
    );
  }
}
