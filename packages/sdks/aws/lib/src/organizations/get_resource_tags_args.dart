// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_resource_tags_get_resource_tags_args_doc}
/// Arguments for getResourceTags.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_resource_tags_get_resource_tags_args_doc}
class GetResourceTagsArgs {
  /// ID of the resource with the tags to list. See details below.
  final pulumi.Input<String> resourceId;
  /// Map of key=value pairs for each tag set on the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetResourceTagsArgs].
  /// [resourceId] ID of the resource with the tags to list. See details below.
  /// [tags] Map of key=value pairs for each tag set on the resource.
  GetResourceTagsArgs({
    required this.resourceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'tags': ?tags,
    };
  }

  factory GetResourceTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceTagsArgs(
      resourceId: (map['resourceId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

