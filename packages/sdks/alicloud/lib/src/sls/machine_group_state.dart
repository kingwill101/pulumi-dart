// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_group_group_attribute.dart';

/// Input properties used for looking up and filtering MachineGroup resources.
class MachineGroupState {
  /// Properties of machine groups. For details, please refer to the groupAttribute parameter description in the following table. See `group_attribute` below.
  final pulumi.Input<MachineGroupGroupAttribute>? groupAttribute;
  /// The name of the machine group. The name must meet the following requirements:
  ///
  /// - The name of each machine group in a project must be unique.
  /// - It can contain only lowercase letters, digits, hyphens (-), and underscores (\_).
  /// - It must start and end with a lowercase letter or a digit.
  /// - It must be 3 to 128 characters in length.
  final pulumi.Input<String>? groupName;
  /// The type of the machine group. Set the value to an empty string.
  final pulumi.Input<String>? groupType;
  /// The identifier type of the machine group. Valid values:
  ///
  /// - ip: The machine group uses IP addresses as identifiers.
  /// - userdefined: The machine group uses custom identifiers.
  final pulumi.Input<String>? machineIdentifyType;
  /// The identification information of the machine group.
  /// - If machineidentifiytype is configured to ip, enter the ip address of the server.
  /// - If machineidentifiytype is configured to userdefined, enter a custom identifier here.
  final pulumi.Input<List<String>>? machineLists;
  /// The name of the project.
  final pulumi.Input<String>? projectName;

  /// Creates a new [MachineGroupState].
  /// [groupAttribute] Properties of machine groups. For details, please refer to the groupAttribute parameter description in the following table. See `group_attribute` below.
  /// [groupName] The name of the machine group. The name must meet the following requirements:
  /// [groupType] The type of the machine group. Set the value to an empty string.
  /// [machineIdentifyType] The identifier type of the machine group. Valid values:
  /// [machineLists] The identification information of the machine group.
  /// [projectName] The name of the project.
  MachineGroupState({
    this.groupAttribute,
    this.groupName,
    this.groupType,
    this.machineIdentifyType,
    this.machineLists,
    this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttribute': ?pulumi.Input.mapOptionalInputValue<MachineGroupGroupAttribute, Map<String, dynamic>>(groupAttribute, (value) => value.toMap()),
      'groupName': ?groupName,
      'groupType': ?groupType,
      'machineIdentifyType': ?machineIdentifyType,
      'machineLists': ?machineLists,
      'projectName': ?projectName,
    };
  }

  factory MachineGroupState.fromMap(Map<String, dynamic> map) {
    return MachineGroupState(
      groupAttribute: map['groupAttribute'] == null ? null : (MachineGroupGroupAttribute.fromMap((map['groupAttribute']! as Map).cast<String, dynamic>())).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      groupType: map['groupType'] == null ? null : (map['groupType']! as String).input(),
      machineIdentifyType: map['machineIdentifyType'] == null ? null : (map['machineIdentifyType']! as String).input(),
      machineLists: map['machineLists'] == null ? null : ((map['machineLists']! as List).cast<String>()).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
    );
  }
}

