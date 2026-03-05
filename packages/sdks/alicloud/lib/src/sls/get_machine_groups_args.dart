// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_machine_groups_get_machine_groups_args_doc}
/// Arguments for getMachineGroups.
/// {@endtemplate}
/// {@macro pulumi_sls_get_machine_groups_get_machine_groups_args_doc}
class GetMachineGroupsArgs {
  /// Machine Group name
  final pulumi.Input<String>? groupName;
  /// A list of Machine Group IDs. The value is formulated as `&lt;project_name&gt;:&lt;group_name&gt;`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Project name
  final pulumi.Input<String> projectName;

  /// Creates a new [GetMachineGroupsArgs].
  /// [groupName] Machine Group name
  /// [ids] A list of Machine Group IDs. The value is formulated as `&lt;project_name&gt;:&lt;group_name&gt;`.
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
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}

