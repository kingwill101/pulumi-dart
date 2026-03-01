// ignore_for_file: unused_element, unnecessary_cast


/// Server
class DeploymentServerResponse {
  /// Base runtime URLs for this deployment.
  final List<String>? runtimeUri;

  /// Creates a new [DeploymentServerResponse].
  /// [runtimeUri] Base runtime URLs for this deployment.
  DeploymentServerResponse({
    this.runtimeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeUri': ?runtimeUri,
    };
  }

  factory DeploymentServerResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentServerResponse(
      runtimeUri: map['runtimeUri'] == null ? null : (map['runtimeUri'] as List).cast<String>(),
    );
  }
}

