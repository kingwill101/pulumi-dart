// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_tags_tag/get_tags_tag.dart';

/// Result data returned by getTags.
class GetTagsResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String packageName;
  final String? project;
  final String repositoryId;

  /// A list of all retrieved Artifact Registry tags. Structure is defined below.
  final List<GetTagsTag> tags;

  GetTagsResult({
    this.filter,
    required this.id,
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['location'] = location;
    map['packageName'] = packageName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['tags'] = Input.encodeList<GetTagsTag, Map<String, dynamic>>(
        tags, (value) => value.toMap());
    return map;
  }

  factory GetTagsResult.fromMap(Map<String, dynamic> map) {
    return GetTagsResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      packageName: map['packageName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      tags: Input.decodeList<GetTagsTag>(
          map['tags'],
          (value) =>
              GetTagsTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
