// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_reference_with_hints.dart';

/// {@template pulumi_operationalinsights_machine_group_args_doc}
/// The set of arguments for MachineGroup.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_machine_group_args_doc}
class MachineGroupArgs {
  /// Count of machines in this group. The value of count may be bigger than the number of machines in case of the group has been truncated due to exceeding the max number of machines a group can handle.
  final pulumi.Input<int>? count;
  /// User defined name for the group
  final pulumi.Input<String> displayName;
  /// Type of the machine group
  final pulumi.Input<String>? groupType;
  /// Additional resource type qualifier.
  /// Expected value is 'machineGroup'.
  final pulumi.Input<String> kind;
  /// Machine Group resource name.
  final pulumi.Input<String>? machineGroupName;
  /// References of the machines in this group. The hints within each reference do not represent the current value of the corresponding fields. They are a snapshot created during the last time the machine group was updated.
  final pulumi.Input<List<MachineReferenceWithHints>>? machines;
  /// Resource group name within the specified subscriptionId.
  final pulumi.Input<String> resourceGroupName;
  /// OMS workspace containing the resources of interest.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MachineGroupArgs].
  /// [count] Count of machines in this group. The value of count may be bigger than the number of machines in case of the group has been truncated due to exceeding the max number of machines a group can handle.
  /// [displayName] User defined name for the group
  /// [groupType] Type of the machine group
  /// [kind] Additional resource type qualifier.
  /// [machineGroupName] Machine Group resource name.
  /// [machines] References of the machines in this group. The hints within each reference do not represent the current value of the corresponding fields. They are a snapshot created during the last time the machine group was updated.
  /// [resourceGroupName] Resource group name within the specified subscriptionId.
  /// [workspaceName] OMS workspace containing the resources of interest.
  MachineGroupArgs({
    int? count,
    required String displayName,
    String? groupType,
    required String kind,
    String? machineGroupName,
    List<MachineReferenceWithHints>? machines,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      count = pulumi.Input.asOptionalInput<int>(count),
      displayName = pulumi.Input.asInput<String>(displayName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      kind = pulumi.Input.asInput<String>(kind),
      machineGroupName = pulumi.Input.asOptionalInput<String>(machineGroupName),
      machines = pulumi.Input.asOptionalInput<List<MachineReferenceWithHints>>(machines),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'displayName': displayName,
      'groupType': ?groupType,
      'kind': kind,
      'machineGroupName': ?machineGroupName,
      'machines': ?pulumi.Input.mapOptionalInputValue<List<MachineReferenceWithHints>, List<Map<String, dynamic>>>(machines, (value) => pulumi.Input.encodeList<MachineReferenceWithHints, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory MachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return MachineGroupArgs(
      count: map['count'] == null ? null : map['count'] as int,
      displayName: map['displayName'] as String,
      groupType: map['groupType'] == null ? null : map['groupType'] as String,
      kind: map['kind'] as String,
      machineGroupName: map['machineGroupName'] == null ? null : map['machineGroupName'] as String,
      machines: map['machines'] == null ? null : pulumi.Input.decodeList<MachineReferenceWithHints>(map['machines'], (value) => MachineReferenceWithHints.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

