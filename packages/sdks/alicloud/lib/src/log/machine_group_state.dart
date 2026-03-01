// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MachineGroup resources.
class MachineGroupState {
  /// The specific machine identification, which can be an IP address or user-defined identity.
  final pulumi.Input<List<String>>? identifyLists;
  /// The machine identification type, including IP and user-defined identity. Valid values are "ip" and "userdefined". Default to "ip".
  final pulumi.Input<String>? identifyType;
  /// The machine group name, which is unique in the same project.
  final pulumi.Input<String>? name;
  /// The project name to the machine group belongs.
  final pulumi.Input<String>? project;
  /// The topic of a machine group.
  final pulumi.Input<String>? topic;

  /// Creates a new [MachineGroupState].
  /// [identifyLists] The specific machine identification, which can be an IP address or user-defined identity.
  /// [identifyType] The machine identification type, including IP and user-defined identity. Valid values are "ip" and "userdefined". Default to "ip".
  /// [name] The machine group name, which is unique in the same project.
  /// [project] The project name to the machine group belongs.
  /// [topic] The topic of a machine group.
  MachineGroupState({
    pulumi.Output<List<String>>? identifyLists,
    pulumi.Output<String>? identifyType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? topic,
  }) :
      identifyLists = pulumi.Input.asOptionalInput<List<String>>(identifyLists),
      identifyType = pulumi.Input.asOptionalInput<String>(identifyType),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      topic = pulumi.Input.asOptionalInput<String>(topic);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifyLists': ?identifyLists,
      'identifyType': ?identifyType,
      'name': ?name,
      'project': ?project,
      'topic': ?topic,
    };
  }

  factory MachineGroupState.fromMap(Map<String, dynamic> map) {
    return MachineGroupState(
      identifyLists: map['identifyLists'] == null ? null : pulumi.Output.create<List<String>>((map['identifyLists'] as List).cast<String>()),
      identifyType: map['identifyType'] == null ? null : pulumi.Output.create<String>(map['identifyType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      topic: map['topic'] == null ? null : pulumi.Output.create<String>(map['topic'] as String),
    );
  }
}

