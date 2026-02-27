// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_version_related_tag/get_version_related_tag.dart';

/// Result data returned by getVersion.
class GetVersionResult {
  /// Client specified annotations.
  final Map<String, String> annotations;

  /// The time, as a RFC 3339 string, this package was created.
  final String createTime;

  /// Description of the version, as specified in its metadata.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  final String name;
  final String packageName;
  final String? project;

  /// A list of related tags. Will contain up to 100 tags that reference this version.
  final List<GetVersionRelatedTag> relatedTags;
  final String repositoryId;

  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final String updateTime;
  final String versionName;
  final String? view;

  GetVersionResult({
    required this.annotations,
    required this.createTime,
    required this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.packageName,
    this.project,
    required this.relatedTags,
    required this.repositoryId,
    required this.updateTime,
    required this.versionName,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['description'] = description;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    map['packageName'] = packageName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['relatedTags'] =
        pulumi.Input.encodeList<GetVersionRelatedTag, Map<String, dynamic>>(
            relatedTags, (value) => value.toMap());
    map['repositoryId'] = repositoryId;
    map['updateTime'] = updateTime;
    map['versionName'] = versionName;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetVersionResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      relatedTags: pulumi.Input.decodeList<GetVersionRelatedTag>(
          map['relatedTags'],
          (value) => GetVersionRelatedTag.fromMap(
              (value as Map).cast<String, dynamic>())),
      repositoryId: map['repositoryId'] as String,
      updateTime: map['updateTime'] as String,
      versionName: map['versionName'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
