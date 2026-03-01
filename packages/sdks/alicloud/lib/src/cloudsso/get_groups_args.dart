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
    required pulumi.Output<String> directoryId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? provisionType,
  }) :
      directoryId = pulumi.Input.asInput<String>(directoryId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      provisionType = pulumi.Input.asOptionalInput<String>(provisionType);

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
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      provisionType: map['provisionType'] == null ? null : pulumi.Output.create<String>(map['provisionType'] as String),
    );
  }
}

