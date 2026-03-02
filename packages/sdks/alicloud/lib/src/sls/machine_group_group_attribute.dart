// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MachineGroupGroupAttribute {
  /// The identifier of the external management system on which the machine group depends. This parameter is empty by default.
  final pulumi.Input<String>? externalName;
  /// The log topic of the machine group.
  final pulumi.Input<String>? groupTopic;

  /// Creates a new [MachineGroupGroupAttribute].
  /// [externalName] The identifier of the external management system on which the machine group depends. This parameter is empty by default.
  /// [groupTopic] The log topic of the machine group.
  MachineGroupGroupAttribute({
    this.externalName,
    this.groupTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalName': ?externalName,
      'groupTopic': ?groupTopic,
    };
  }

  factory MachineGroupGroupAttribute.fromMap(Map<String, dynamic> map) {
    return MachineGroupGroupAttribute(
      externalName: map['externalName'] == null ? null : (map['externalName']! as String).input(),
      groupTopic: map['groupTopic'] == null ? null : (map['groupTopic']! as String).input(),
    );
  }
}

