// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDirectory.
class GetDirectoryArgs2 {
  /// Directory identifier for registration in WorkSpaces service.
  final Input<String> directoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags assigned to the WorkSpaces directory.
  final Input<Map<String, String>>? tags;

  GetDirectoryArgs2({
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

  factory GetDirectoryArgs2.fromMap(Map<String, dynamic> map) {
    return GetDirectoryArgs2(
      directoryId: Input.asInput<String>(map['directoryId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
