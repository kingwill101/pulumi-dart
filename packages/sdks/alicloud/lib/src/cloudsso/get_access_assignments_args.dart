// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_access_assignments_get_access_assignments_args_doc}
/// Arguments for getAccessAssignments.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_access_assignments_get_access_assignments_args_doc}
class GetAccessAssignmentsArgs {
  /// Access configuration ID.
  final pulumi.Input<String>? accessConfigurationId;
  /// Directory ID.
  final pulumi.Input<String> directoryId;
  /// A list of Access Assignment IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Create the identity type of the access assignment, which can be a user or a user group. Valid values: `Group`, `User`.
  final pulumi.Input<String>? principalType;
  /// The ID of the target to create the resource range.
  final pulumi.Input<String>? targetId;
  /// The type of the resource range target to be accessed. Only a single RD primary account or member account can be specified in the first phase. Valid values: `RD-Account`.
  final pulumi.Input<String>? targetType;

  /// Creates a new [GetAccessAssignmentsArgs].
  /// [accessConfigurationId] Access configuration ID.
  /// [directoryId] Directory ID.
  /// [ids] A list of Access Assignment IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [principalType] Create the identity type of the access assignment, which can be a user or a user group. Valid values: `Group`, `User`.
  /// [targetId] The ID of the target to create the resource range.
  /// [targetType] The type of the resource range target to be accessed. Only a single RD primary account or member account can be specified in the first phase. Valid values: `RD-Account`.
  GetAccessAssignmentsArgs({
    this.accessConfigurationId,
    required this.directoryId,
    this.ids,
    this.outputFile,
    this.principalType,
    this.targetId,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': ?accessConfigurationId,
      'directoryId': directoryId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'principalType': ?principalType,
      'targetId': ?targetId,
      'targetType': ?targetType,
    };
  }

  factory GetAccessAssignmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessAssignmentsArgs(
      accessConfigurationId: map['accessConfigurationId'] == null ? null : (map['accessConfigurationId'] as String).input(),
      directoryId: (map['directoryId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType'] as String).input(),
      targetId: map['targetId'] == null ? null : (map['targetId'] as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType'] as String).input(),
    );
  }
}

