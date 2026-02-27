// ignore_for_file: unused_element, unnecessary_cast

class GetPythonPackagesPythonPackage {
  /// The time, as a RFC 3339 string, this package was created.
  final String createTime;

  /// The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/pythonPackages/{{pythonPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/pythonPackages/my-test-package:0.0.1`
  final String name;

  /// Extracted short name of the package (last part of `name`, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  final String packageName;

  /// The time, as a RFC 3339 string, this package was updated.
  final String updateTime;

  /// Version of this package.
  final String version;

  GetPythonPackagesPythonPackage({
    required this.createTime,
    required this.name,
    required this.packageName,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['name'] = name;
    map['packageName'] = packageName;
    map['updateTime'] = updateTime;
    map['version'] = version;
    return map;
  }

  factory GetPythonPackagesPythonPackage.fromMap(Map<String, dynamic> map) {
    return GetPythonPackagesPythonPackage(
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      packageName: map['packageName'] as String,
      updateTime: map['updateTime'] as String,
      version: map['version'] as String,
    );
  }
}
