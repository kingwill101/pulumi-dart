// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFileSystem.
class GetFileSystemArgs {
  /// Restricts the list to the file system with this creation token.
  final pulumi.Input<String>? creationToken;

  /// ID that identifies the file system (e.g., fs-ccfc0d65).
  final pulumi.Input<String>? fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Restricts the list to the file system with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  GetFileSystemArgs({
    this.creationToken,
    this.fileSystemId,
    this.region,
    this.tags,
  });

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
      creationToken: pulumi.Input.asOptionalInput<String>(map['creationToken']),
      fileSystemId: pulumi.Input.asOptionalInput<String>(map['fileSystemId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
