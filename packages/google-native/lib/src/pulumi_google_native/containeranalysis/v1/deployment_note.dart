// ignore_for_file: unused_element, unnecessary_cast

/// An artifact that can be deployed in some runtime.
class DeploymentNote {
  /// Resource URI for the artifact being deployed.
  final List<String> resourceUri;

  DeploymentNote({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceUri'] = resourceUri;
    return map;
  }

  factory DeploymentNote.fromMap(Map<String, dynamic> map) {
    return DeploymentNote(
      resourceUri: (map['resourceUri'] as List).cast<String>(),
    );
  }
}
