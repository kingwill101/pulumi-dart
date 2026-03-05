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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemPath: (() { final guardedValue = map['fileSystemPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filesetId: (() { final guardedValue = map['filesetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

