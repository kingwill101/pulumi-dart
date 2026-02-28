// ignore_for_file: unused_element, unnecessary_cast


/// An artifact that can be deployed in some runtime.
class DeploymentNoteResponse {
  /// Resource URI for the artifact being deployed.
  final List<String> resourceUri;

  /// Creates a new [DeploymentNoteResponse].
  /// [resourceUri] Resource URI for the artifact being deployed.
  DeploymentNoteResponse({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory DeploymentNoteResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentNoteResponse(
      resourceUri: (map['resourceUri'] as List).cast<String>(),
    );
  }
}

