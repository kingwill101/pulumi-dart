// ignore_for_file: unused_element, unnecessary_cast

/// Details of the final state "abort" and associated resource.
class AbortInfoResponseNetworkmanagementV1beta1 {
  /// Causes that the analysis is aborted.
  final String cause;

  /// List of project IDs that the user has specified in the request but does not have permission to access network configs. Analysis is aborted in this case with the PERMISSION_DENIED cause.
  final List<String> projectsMissingPermission;

  /// URI of the resource that caused the abort.
  final String resourceUri;

  AbortInfoResponseNetworkmanagementV1beta1({
    required this.cause,
    required this.projectsMissingPermission,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cause'] = cause;
    map['projectsMissingPermission'] = projectsMissingPermission;
    map['resourceUri'] = resourceUri;
    return map;
  }

  factory AbortInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AbortInfoResponseNetworkmanagementV1beta1(
      cause: map['cause'] as String,
      projectsMissingPermission:
          (map['projectsMissingPermission'] as List).cast<String>(),
      resourceUri: map['resourceUri'] as String,
    );
  }
}
