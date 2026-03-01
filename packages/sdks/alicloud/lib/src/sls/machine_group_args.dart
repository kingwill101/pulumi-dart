// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_group_group_attribute.dart';

/// {@template pulumi_sls_machine_group_machine_group_args_doc}
/// The set of arguments for MachineGroup.
/// {@endtemplate}
/// {@macro pulumi_sls_machine_group_machine_group_args_doc}
class MachineGroupArgs {
  /// Properties of machine groups. For details, please refer to the groupAttribute parameter description in the following table. See `group_attribute` below.
  final pulumi.Input<MachineGroupGroupAttribute>? groupAttribute;
  /// The name of the machine group. The name must meet the following requirements:
  ///
  /// - The name of each machine group in a project must be unique.
  /// - It can contain only lowercase letters, digits, hyphens (-), and underscores (\_).
  /// - It must start and end with a lowercase letter or a digit.
  /// - It must be 3 to 128 characters in length.
  final pulumi.Input<String> groupName;
  /// The type of the machine group. Set the value to an empty string.
  final pulumi.Input<String>? groupType;
  /// The identifier type of the machine group. Valid values:
  ///
  /// - ip: The machine group uses IP addresses as identifiers.
  /// - userdefined: The machine group uses custom identifiers.
  final pulumi.Input<String> machineIdentifyType;
  /// The identification information of the machine group.
  /// - If machineidentifiytype is configured to ip, enter the ip address of the server.
  /// - If machineidentifiytype is configured to userdefined, enter a custom identifier here.
  final pulumi.Input<List<String>> machineLists;
  /// The name of the project.
  final pulumi.Input<String> projectName;

  /// Creates a new [MachineGroupArgs].
  /// [groupAttribute] Properties of machine groups. For details, please refer to the groupAttribute parameter description in the following table. See `group_attribute` below.
  /// [groupName] The name of the machine group. The name must meet the following requirements:
  /// [groupType] The type of the machine group. Set the value to an empty string.
  /// [machineIdentifyType] The identifier type of the machine group. Valid values:
  /// [machineLists] The identification information of the machine group.
  /// [projectName] The name of the project.
  MachineGroupArgs({
    pulumi.Output<MachineGroupGroupAttribute>? groupAttribute,
    required pulumi.Output<String> groupName,
    pulumi.Output<String>? groupType,
    required pulumi.Output<String> machineIdentifyType,
    required pulumi.Output<List<String>> machineLists,
    required pulumi.Output<String> projectName,
  }) :
      groupAttribute = pulumi.Input.asOptionalInput<MachineGroupGroupAttribute>(groupAttribute),
      groupName = pulumi.Input.asInput<String>(groupName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      machineIdentifyType = pulumi.Input.asInput<String>(machineIdentifyType),
      machineLists = pulumi.Input.asInput<List<String>>(machineLists),
      projectName = pulumi.Input.asInput<String>(projectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttribute': ?pulumi.Input.mapOptionalInputValue<MachineGroupGroupAttribute, Map<String, dynamic>>(groupAttribute, (value) => value.toMap()),
      'groupName': groupName,
      'groupType': ?groupType,
      'machineIdentifyType': machineIdentifyType,
      'machineLists': machineLists,
      'projectName': projectName,
    };
  }

  factory MachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return MachineGroupArgs(
      groupAttribute: map['groupAttribute'] == null ? null : pulumi.Output.create<MachineGroupGroupAttribute>(MachineGroupGroupAttribute.fromMap((map['groupAttribute'] as Map).cast<String, dynamic>())),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      groupType: map['groupType'] == null ? null : pulumi.Output.create<String>(map['groupType'] as String),
      machineIdentifyType: pulumi.Output.create<String>(map['machineIdentifyType'] as String),
      machineLists: pulumi.Output.create<List<String>>((map['machineLists'] as List).cast<String>()),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
    );
  }
}

