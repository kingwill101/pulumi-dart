// ignore_for_file: unused_element, unnecessary_cast

class TriggerBuildArtifactsPythonPackage {
  /// Path globs used to match files in the build's workspace. For Python/ Twine, this is usually dist/*, and sometimes additionally an .asc file.
  final List<String>? paths;

  /// Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY"
  /// Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.
  final String? repository;

  /// Creates a new [TriggerBuildArtifactsPythonPackage].
  /// [paths] Path globs used to match files in the build's workspace. For Python/ Twine, this is usually dist/*, and sometimes additionally an .asc file.
  /// [repository] Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY"
  TriggerBuildArtifactsPythonPackage({
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

  factory TriggerBuildArtifactsPythonPackage.fromMap(Map<String, dynamic> map) {
    return TriggerBuildArtifactsPythonPackage(
      paths:
          map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      repository:
          map['repository'] == null ? null : map['repository'] as String,
    );
  }
}
