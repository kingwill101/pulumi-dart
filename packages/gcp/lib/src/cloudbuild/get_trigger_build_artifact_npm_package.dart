// ignore_for_file: unused_element, unnecessary_cast


class GetTriggerBuildArtifactNpmPackage {
  /// Path to the package.json. e.g. workspace/path/to/package
  final String packagePath;
  /// Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY"
  ///
  /// Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
  final String repository;

  /// Creates a new [GetTriggerBuildArtifactNpmPackage].
  /// [packagePath] Path to the package.json. e.g. workspace/path/to/package
  /// [repository] Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY"
  GetTriggerBuildArtifactNpmPackage({
    required this.packagePath,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packagePath': packagePath,
      'repository': repository,
    };
  }

  factory GetTriggerBuildArtifactNpmPackage.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactNpmPackage(
      packagePath: map['packagePath'] as String,
      repository: map['repository'] as String,
    );
  }
}

