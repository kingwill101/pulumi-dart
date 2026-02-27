// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResourceTags.
class GetResourceTagsArgs {
  /// ID of the resource with the tags to list. See details below.
  final pulumi.Input<String> resourceId;

  /// Map of key=value pairs for each tag set on the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
