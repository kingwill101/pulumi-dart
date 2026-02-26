// ignore_for_file: unused_element, unnecessary_cast

/// An artifact that can be deployed in some runtime.
class DeployableResponse2 {
  /// Resource URI for the artifact being deployed.
  final List<String> resourceUri;

  DeployableResponse2({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceUri'] = resourceUri;
    return map;
  }

  factory DeployableResponse2.fromMap(Map<String, dynamic> map) {
    return DeployableResponse2(
      resourceUri: (map['resourceUri'] as List).cast<String>(),
    );
  }
}
