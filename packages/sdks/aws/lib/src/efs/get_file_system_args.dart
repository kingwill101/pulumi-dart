// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_efs_get_file_system_get_file_system_args_doc}
/// Arguments for getFileSystem.
/// {@endtemplate}
/// {@macro pulumi_efs_get_file_system_get_file_system_args_doc}
class GetFileSystemArgs {
  /// Restricts the list to the file system with this creation token.
  final pulumi.Input<String>? creationToken;
  /// ID that identifies the file system (e.g., fs-ccfc0d65).
  final pulumi.Input<String>? fileSystemId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Restricts the list to the file system with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFileSystemArgs].
  /// [creationToken] Restricts the list to the file system with this creation token.
  /// [fileSystemId] ID that identifies the file system (e.g., fs-ccfc0d65).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Restricts the list to the file system with these tags.
  const GetFileSystemArgs({
    this.creationToken,
    this.fileSystemId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationToken': ?creationToken,
      'fileSystemId': ?fileSystemId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetFileSystemArgs(
      creationToken: (() { final guardedValue = map['creationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

