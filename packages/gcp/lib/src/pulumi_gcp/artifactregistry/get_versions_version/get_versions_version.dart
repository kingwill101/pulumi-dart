// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_versions_version_related_tag/get_versions_version_related_tag.dart';

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

  GetVersionsVersion({
    required this.annotations,
    required this.createTime,
    required this.description,
    required this.name,
    required this.relatedTags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['relatedTags'] =
        Input.encodeList<GetVersionsVersionRelatedTag, Map<String, dynamic>>(
            relatedTags, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetVersionsVersion(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      relatedTags: Input.decodeList<GetVersionsVersionRelatedTag>(
          map['relatedTags'],
          (value) => GetVersionsVersionRelatedTag.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
