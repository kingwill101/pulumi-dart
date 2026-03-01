// ignore_for_file: unused_element, unnecessary_cast

/// Details of the final state "abort" and associated resource.
class AbortInfoResponse {
  /// Causes that the analysis is aborted.
  final String cause;

  /// List of project IDs that the user has specified in the request but does not have permission to access network configs. Analysis is aborted in this case with the PERMISSION_DENIED cause.
  final List<String> projectsMissingPermission;

  /// URI of the resource that caused the abort.
  final String resourceUri;

  /// Creates a new [AbortInfoResponse].
  /// [cause] Causes that the analysis is aborted.
  /// [projectsMissingPermission] List of project IDs that the user has specified in the request but does not have permission to access network configs. Analysis is aborted in this case with the PERMISSION_DENIED cause.
  /// [resourceUri] URI of the resource that caused the abort.
  AbortInfoResponse({
    required this.cause,
    required this.projectsMissingPermission,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': cause,
      'projectsMissingPermission': projectsMissingPermission,
      'resourceUri': resourceUri,
    };
  }

  factory AbortInfoResponse.fromMap(Map<String, dynamic> map) {
    return AbortInfoResponse(
      cause: map['cause'] as String,
      projectsMissingPermission: (map['projectsMissingPermission'] as List)
          .cast<String>(),
      resourceUri: map['resourceUri'] as String,
    );
  }
}
