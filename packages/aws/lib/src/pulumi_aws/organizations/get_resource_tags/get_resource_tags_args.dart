// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResourceTags.
class GetResourceTagsArgs {
  /// ID of the resource with the tags to list. See details below.
  final Input<String> resourceId;

  /// Map of key=value pairs for each tag set on the resource.
  final Input<Map<String, String>>? tags;

  GetResourceTagsArgs({
    required this.resourceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceId'] = resourceId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetResourceTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceTagsArgs(
      resourceId: Input.asInput<String>(map['resourceId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
