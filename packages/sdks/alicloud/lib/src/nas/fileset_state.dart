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
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? fileSystemPath,
    pulumi.Output<String>? filesetId,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      fileSystemPath = pulumi.Input.asOptionalInput<String>(fileSystemPath),
      filesetId = pulumi.Input.asOptionalInput<String>(filesetId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      fileSystemPath: map['fileSystemPath'] == null ? null : pulumi.Output.create<String>(map['fileSystemPath'] as String),
      filesetId: map['filesetId'] == null ? null : pulumi.Output.create<String>(map['filesetId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

