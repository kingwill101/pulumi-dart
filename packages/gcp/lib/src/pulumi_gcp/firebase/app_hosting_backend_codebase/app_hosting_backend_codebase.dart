// ignore_for_file: unused_element, unnecessary_cast

class AppHostingBackendCodebase {
  /// The resource name for the Developer Connect
  /// [`gitRepositoryLink`](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections.gitRepositoryLinks)
  /// connected to this backend, in the format:
  /// projects/{project}/locations/{location}/connections/{connection}/gitRepositoryLinks/{repositoryLink}
  final String repository;

  /// If `repository` is provided, the directory relative to the root of the
  /// repository to use as the root for the deployed web app.
  final String? rootDirectory;

  AppHostingBackendCodebase({
    required this.repository,
    this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repository'] = repository;
    final rootDirectoryValue = rootDirectory;
    if (rootDirectoryValue != null) {
      map['rootDirectory'] = rootDirectoryValue;
    }
    return map;
  }

  factory AppHostingBackendCodebase.fromMap(Map<String, dynamic> map) {
    return AppHostingBackendCodebase(
      repository: map['repository'] as String,
      rootDirectory:
          map['rootDirectory'] == null ? null : map['rootDirectory'] as String,
    );
  }
}
