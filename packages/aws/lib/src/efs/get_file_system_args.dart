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
  GetFileSystemArgs({
    String? creationToken,
    String? fileSystemId,
    String? region,
    Map<String, String>? tags,
  })  : creationToken = pulumi.Input.asOptionalInput<String>(creationToken),
        fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creationTokenValue = creationToken;
    if (creationTokenValue != null) {
      map['creationToken'] = creationTokenValue;
    }
    final fileSystemIdValue = fileSystemId;
    if (fileSystemIdValue != null) {
      map['fileSystemId'] = fileSystemIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetFileSystemArgs(
      creationToken:
          map['creationToken'] == null ? null : map['creationToken'] as String,
      fileSystemId:
          map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
