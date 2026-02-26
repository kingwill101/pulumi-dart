// ignore_for_file: unused_element, unnecessary_cast

/// Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
class PythonPackage {
  /// Path globs used to match files in the build's workspace. For Python/ Twine, this is usually `dist/*`, and sometimes additionally an `.asc` file.
  final List<String>? paths;

  /// Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY" Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.
  final String? repository;

  PythonPackage({
    this.paths,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pathsValue;
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    return map;
  }

  factory PythonPackage.fromMap(Map<String, dynamic> map) {
    return PythonPackage(
      paths:
          map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      repository:
          map['repository'] == null ? null : map['repository'] as String,
    );
  }
}
