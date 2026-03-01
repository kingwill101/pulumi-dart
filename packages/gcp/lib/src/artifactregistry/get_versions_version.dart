// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_versions_version_related_tag.dart';

class GetVersionsVersion {
  /// Client specified annotations.
  final Map<String, String> annotations;

  /// The time, as a RFC 3339 string, this package was created.
  final String createTime;

  /// Description of the version, as specified in its metadata.
  final String description;

  /// The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  final String name;

  /// A list of related tags. Will contain up to 100 tags that reference this version.
  final List<GetVersionsVersionRelatedTag> relatedTags;

  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final String updateTime;

  /// Creates a new [GetVersionsVersion].
  /// [annotations] Client specified annotations.
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [description] Description of the version, as specified in its metadata.
  /// [name] The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  /// [relatedTags] A list of related tags. Will contain up to 100 tags that reference this version.
  /// [updateTime] The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  GetVersionsVersion({
    required this.annotations,
    required this.createTime,
    required this.description,
    required this.name,
    required this.relatedTags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'description': description,
      'name': name,
      'relatedTags':
          pulumi.Input.encodeList<
            GetVersionsVersionRelatedTag,
            Map<String, dynamic>
          >(relatedTags, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetVersionsVersion(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      relatedTags: pulumi.Input.decodeList<GetVersionsVersionRelatedTag>(
        map['relatedTags'],
        (value) => GetVersionsVersionRelatedTag.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      updateTime: map['updateTime'] as String,
    );
  }
}
