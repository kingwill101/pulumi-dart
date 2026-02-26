// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerBuildArtifactPythonPackage {
  /// Path globs used to match files in the build's workspace. For Python/ Twine, this is usually dist/*, and sometimes additionally an .asc file.
  final List<String> paths;

  /// Artifact Registry repository, in the form "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY"
  ///
  /// Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.
  final String repository;

  GetTriggerBuildArtifactPythonPackage({
    required this.paths,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['paths'] = paths;
    map['repository'] = repository;
    return map;
  }

  factory GetTriggerBuildArtifactPythonPackage.fromMap(
      Map<String, dynamic> map) {
    return GetTriggerBuildArtifactPythonPackage(
      paths: (map['paths'] as List).cast<String>(),
      repository: map['repository'] as String,
    );
  }
}
