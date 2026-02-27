// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDirectory.
class GetDirectoryWorkspacesArgs {
  /// Directory identifier for registration in WorkSpaces service.
  final pulumi.Input<String> directoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags assigned to the WorkSpaces directory.
  final pulumi.Input<Map<String, String>>? tags;

  GetDirectoryWorkspacesArgs({
    required this.directoryId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['directoryId'] = directoryId;
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

  factory GetDirectoryWorkspacesArgs.fromMap(Map<String, dynamic> map) {
    return GetDirectoryWorkspacesArgs(
      directoryId: pulumi.Input.asInput<String>(map['directoryId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
