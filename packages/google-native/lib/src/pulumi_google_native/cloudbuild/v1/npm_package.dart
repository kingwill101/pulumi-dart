// ignore_for_file: unused_element, unnecessary_cast

/// Npm package to upload to Artifact Registry upon successful completion of all build steps.
class NpmPackage {
  /// Path to the package.json. e.g. workspace/path/to/package
  final String? packagePath;

  /// Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY" Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
  final String? repository;

  NpmPackage({
    this.packagePath,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final packagePathValue = packagePath;
    if (packagePathValue != null) {
      map['packagePath'] = packagePathValue;
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    return map;
  }

  factory NpmPackage.fromMap(Map<String, dynamic> map) {
    return NpmPackage(
      packagePath:
          map['packagePath'] == null ? null : map['packagePath'] as String,
      repository:
          map['repository'] == null ? null : map['repository'] as String,
    );
  }
}
