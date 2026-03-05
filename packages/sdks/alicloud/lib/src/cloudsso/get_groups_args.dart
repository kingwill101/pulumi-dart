// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_groups_get_groups_args_doc}
/// Arguments for getGroups.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_groups_get_groups_args_doc}
class GetGroupsArgs {
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// A list of Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ProvisionType of the Group. Valid values: `Manual`, `Synchronized`.
  final pulumi.Input<String>? provisionType;

  /// Creates a new [GetGroupsArgs].
  /// [directoryId] The ID of the Directory.
  /// [ids] A list of Group IDs.
  /// [nameRegex] A regex string to filter results by Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [provisionType] The ProvisionType of the Group. Valid values: `Manual`, `Synchronized`.
  GetGroupsArgs({
    required this.directoryId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.provisionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'provisionType': ?provisionType,
    };
  }

  factory GetGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupsArgs(
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionType: (() { final guardedValue = map['provisionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

