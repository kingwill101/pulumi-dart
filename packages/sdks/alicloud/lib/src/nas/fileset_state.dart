// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Fileset resources.
class FilesetState {
  /// The time when Fileset was created.
  final pulumi.Input<String>? createTime;
  /// The instance release protection attribute, which specifies whether the instance can be released through the console or API( DeleteFileset).
  /// - true: Enable instance release protection.
  /// - false (default): Turn off instance release protection
  final pulumi.Input<bool>? deletionProtection;
  /// Description of Fileset.
  final pulumi.Input<String>? description;
  /// Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;
  /// The path of Fileset.
  final pulumi.Input<String>? fileSystemPath;
  /// Fileset ID
  final pulumi.Input<String>? filesetId;
  /// The status of Fileset. Includes:
  final pulumi.Input<String>? status;

  /// Creates a new [FilesetState].
  /// [createTime] The time when Fileset was created.
  /// [deletionProtection] The instance release protection attribute, which specifies whether the instance can be released through the console or API( DeleteFileset).
  /// [description] Description of Fileset.
  /// [dryRun] Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  /// [fileSystemId] The ID of the file system.
  /// [fileSystemPath] The path of Fileset.
  /// [filesetId] Fileset ID
  /// [status] The status of Fileset. Includes:
  FilesetState({
    this.createTime,
    this.deletionProtection,
    this.description,
    this.dryRun,
    this.fileSystemId,
    this.fileSystemPath,
    this.filesetId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'dryRun': ?dryRun,
      'fileSystemId': ?fileSystemId,
      'fileSystemPath': ?fileSystemPath,
      'filesetId': ?filesetId,
      'status': ?status,
    };
  }

  factory FilesetState.fromMap(Map<String, dynamic> map) {
    return FilesetState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      fileSystemPath: map['fileSystemPath'] == null ? null : (map['fileSystemPath'] as String).input(),
      filesetId: map['filesetId'] == null ? null : (map['filesetId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

