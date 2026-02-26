// ignore_for_file: unused_element, unnecessary_cast

class GetNpmPackagesNpmPackage {
  /// The time, as a RFC 3339 string, this package was created.
  final String createTime;

  /// The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/npmPackages/{{npmPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/npmPackages/my-test-package:0.0.1`
  final String name;

  /// Extracted short name of the package (last part of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  final String packageName;

  /// The tags associated with the Npm package.
  final List<String> tags;

  /// The time, as a RFC 3339 string, this package was updated.
  final String updateTime;

  /// Version of this package.
  final String version;

  GetNpmPackagesNpmPackage({
    required this.createTime,
    required this.name,
    required this.packageName,
    required this.tags,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['name'] = name;
    map['packageName'] = packageName;
    map['tags'] = tags;
    map['updateTime'] = updateTime;
    map['version'] = version;
    return map;
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
