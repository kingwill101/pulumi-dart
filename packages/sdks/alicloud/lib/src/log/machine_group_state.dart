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
    this.identifyLists,
    this.identifyType,
    this.name,
    this.project,
    this.topic,
  });

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
      identifyLists: map['identifyLists'] == null ? null : ((map['identifyLists']! as List).cast<String>()).input(),
      identifyType: map['identifyType'] == null ? null : (map['identifyType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

