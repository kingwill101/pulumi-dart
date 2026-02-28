// ignore_for_file: unused_element, unnecessary_cast

/// A widget that displays a list of error groups.
class ErrorReportingPanelResponse {
  /// The resource name of the Google Cloud Platform project. Written as projects/{projectID} or projects/{projectNumber}, where {projectID} and {projectNumber} can be found in the Google Cloud console (https://support.google.com/cloud/answer/6158840).Examples: projects/my-project-123, projects/5551234.
  final List<String> projectNames;

  /// An identifier of the service, such as the name of the executable, job, or Google App Engine service name. This field is expected to have a low number of values that are relatively stable over time, as opposed to version, which can be changed whenever new code is deployed.Contains the service name for error reports extracted from Google App Engine logs or default if the App Engine default service is used.
  final List<String> services;

  /// Represents the source code version that the developer provided, which could represent a version label or a Git SHA-1 hash, for example. For App Engine standard environment, the version is set to the version of the app.
  final List<String> versions;

  /// Creates a new [ErrorReportingPanelResponse].
  /// [projectNames] The resource name of the Google Cloud Platform project. Written as projects/{projectID} or projects/{projectNumber}, where {projectID} and {projectNumber} can be found in the Google Cloud console (https://support.google.com/cloud/answer/6158840).Examples: projects/my-project-123, projects/5551234.
  /// [services] An identifier of the service, such as the name of the executable, job, or Google App Engine service name. This field is expected to have a low number of values that are relatively stable over time, as opposed to version, which can be changed whenever new code is deployed.Contains the service name for error reports extracted from Google App Engine logs or default if the App Engine default service is used.
  /// [versions] Represents the source code version that the developer provided, which could represent a version label or a Git SHA-1 hash, for example. For App Engine standard environment, the version is set to the version of the app.
  ErrorReportingPanelResponse({
    required this.projectNames,
    required this.services,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectNames'] = projectNames;
    map['services'] = services;
    map['versions'] = versions;
    return map;
  }

  factory ErrorReportingPanelResponse.fromMap(Map<String, dynamic> map) {
    return ErrorReportingPanelResponse(
      projectNames: (map['projectNames'] as List).cast<String>(),
      services: (map['services'] as List).cast<String>(),
      versions: (map['versions'] as List).cast<String>(),
    );
  }
}
