// ignore_for_file: unused_element, unnecessary_cast


/// An artifact that can be deployed in some runtime.
class DeployableResponse {
  /// Resource URI for the artifact being deployed.
  final List<String> resourceUri;

  /// Creates a new [DeployableResponse].
  /// [resourceUri] Resource URI for the artifact being deployed.
  DeployableResponse({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory DeployableResponse.fromMap(Map<String, dynamic> map) {
    return DeployableResponse(
      resourceUri: (map['resourceUri'] as List).cast<String>(),
    );
  }
}

