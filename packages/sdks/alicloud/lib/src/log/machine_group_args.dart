// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_machine_group_machine_group_args_doc}
/// The set of arguments for MachineGroup.
/// {@endtemplate}
/// {@macro pulumi_log_machine_group_machine_group_args_doc}
class MachineGroupArgs {
  /// The specific machine identification, which can be an IP address or user-defined identity.
  final pulumi.Input<List<String>> identifyLists;
  /// The machine identification type, including IP and user-defined identity. Valid values are "ip" and "userdefined". Default to "ip".
  final pulumi.Input<String>? identifyType;
  /// The machine group name, which is unique in the same project.
  final pulumi.Input<String>? name;
  /// The project name to the machine group belongs.
  final pulumi.Input<String> project;
  /// The topic of a machine group.
  final pulumi.Input<String>? topic;

  /// Creates a new [MachineGroupArgs].
  /// [identifyLists] The specific machine identification, which can be an IP address or user-defined identity.
  /// [identifyType] The machine identification type, including IP and user-defined identity. Valid values are "ip" and "userdefined". Default to "ip".
  /// [name] The machine group name, which is unique in the same project.
  /// [project] The project name to the machine group belongs.
  /// [topic] The topic of a machine group.
  MachineGroupArgs({
    required this.identifyLists,
    this.identifyType,
    this.name,
    required this.project,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifyLists': identifyLists,
      'identifyType': ?identifyType,
      'name': ?name,
      'project': project,
      'topic': ?topic,
    };
  }

  factory MachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return MachineGroupArgs(
      identifyLists: pulumi.Input.fromValue((map['identifyLists'] as List).cast<String>()),
      identifyType: (() { final guardedValue = map['identifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: pulumi.Input.fromValue(map['project'] as String),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

