// ignore_for_file: unused_element, unnecessary_cast

class GetNpmPackagesNpmPackage {
  /// The time, as a RFC 3339 string, this package was created.
  final String createTime;

  /// The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/npmPackages/{{npmPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/npmPackages/my-test-package:0.0.1`
  final String name;

  /// Extracted short name of the package (last part of `name`, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  final String packageName;

  /// The tags associated with the Npm package.
  final List<String> tags;

  /// The time, as a RFC 3339 string, this package was updated.
  final String updateTime;

  /// Version of this package.
  final String version;

  /// Creates a new [GetNpmPackagesNpmPackage].
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [name] The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/npmPackages/{{npmPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/npmPackages/my-test-package:0.0.1`
  /// [packageName] Extracted short name of the package (last part of `name`, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  /// [tags] The tags associated with the Npm package.
  /// [updateTime] The time, as a RFC 3339 string, this package was updated.
  /// [version] Version of this package.
  GetNpmPackagesNpmPackage({
    required this.createTime,
    required this.name,
    required this.packageName,
    required this.tags,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
      'packageName': packageName,
      'tags': tags,
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetNpmPackagesNpmPackage.fromMap(Map<String, dynamic> map) {
    return GetNpmPackagesNpmPackage(
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updateTime: map['updateTime'] as String,
      version: map['version'] as String,
    );
  }
}
