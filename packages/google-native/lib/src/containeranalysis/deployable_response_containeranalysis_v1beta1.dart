// ignore_for_file: unused_element, unnecessary_cast

/// An artifact that can be deployed in some runtime.
class DeployableResponseContaineranalysisV1beta1 {
  /// Resource URI for the artifact being deployed.
  final List<String> resourceUri;

  /// Creates a new [DeployableResponseContaineranalysisV1beta1].
  /// [resourceUri] Resource URI for the artifact being deployed.
  DeployableResponseContaineranalysisV1beta1({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceUri'] = resourceUri;
    return map;
  }

  factory DeployableResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DeployableResponseContaineranalysisV1beta1(
      resourceUri: (map['resourceUri'] as List).cast<String>(),
    );
  }
}
