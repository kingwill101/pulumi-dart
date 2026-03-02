// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_machine_groups_get_machine_groups_args_doc}
/// Arguments for getMachineGroups.
/// {@endtemplate}
/// {@macro pulumi_sls_get_machine_groups_get_machine_groups_args_doc}
class GetMachineGroupsArgs {
  /// Machine Group name
  final pulumi.Input<String>? groupName;
  /// A list of Machine Group IDs. The value is formulated as `<project_name>:<group_name>`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Project name
  final pulumi.Input<String> projectName;

  /// Creates a new [GetMachineGroupsArgs].
  /// [groupName] Machine Group name
  /// [ids] A list of Machine Group IDs. The value is formulated as `<project_name>:<group_name>`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [projectName] Project name
  GetMachineGroupsArgs({
    this.groupName,
    this.ids,
    this.outputFile,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'projectName': projectName,
    };
  }

  factory GetMachineGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineGroupsArgs(
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      projectName: (map['projectName'] as String).input(),
    );
  }
}

