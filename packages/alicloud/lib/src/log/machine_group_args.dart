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
    required List<String> identifyLists,
    String? identifyType,
    String? name,
    required String project,
    String? topic,
  }) :
      identifyLists = pulumi.Input.asInput<List<String>>(identifyLists),
      identifyType = pulumi.Input.asOptionalInput<String>(identifyType),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asInput<String>(project),
      topic = pulumi.Input.asOptionalInput<String>(topic);

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
      identifyLists: (map['identifyLists'] as List).cast<String>(),
      identifyType: map['identifyType'] == null ? null : map['identifyType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

