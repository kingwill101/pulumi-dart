// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_fileset_fileset_args_doc}
/// The set of arguments for Fileset.
/// {@endtemplate}
/// {@macro pulumi_nas_fileset_fileset_args_doc}
class FilesetArgs {
  /// The instance release protection attribute, which specifies whether the instance can be released through the console or API( DeleteFileset).
  /// - true: Enable instance release protection.
  /// - false (default): Turn off instance release protection
  final pulumi.Input<bool>? deletionProtection;

  /// Description of Fileset.
  final pulumi.Input<String>? description;

  /// Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dryRun;

  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;

  /// The path of Fileset.
  final pulumi.Input<String> fileSystemPath;

  /// Creates a new [FilesetArgs].
  /// [deletionProtection] The instance release protection attribute, which specifies whether the instance can be released through the console or API( DeleteFileset).
  /// [description] Description of Fileset.
  /// [dryRun] Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  /// [fileSystemId] The ID of the file system.
  /// [fileSystemPath] The path of Fileset.
  FilesetArgs({
    this.deletionProtection,
    this.description,
    this.dryRun,
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'dryRun': ?dryRun,
      'fileSystemId': fileSystemId,
      'fileSystemPath': fileSystemPath,
    };
  }

  factory FilesetArgs.fromMap(Map<String, dynamic> map) {
    return FilesetArgs(
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemPath: pulumi.Input.fromValue(map['fileSystemPath'] as String),
    );
  }
}
