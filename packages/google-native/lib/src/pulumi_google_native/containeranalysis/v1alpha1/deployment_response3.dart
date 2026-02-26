// ignore_for_file: unused_element, unnecessary_cast

/// The period during which some deployable was active in a runtime.
class DeploymentResponse3 {
  /// Address of the runtime element hosting this deployment.
  final String address;

  /// Configuration used to create this deployment.
  final String config;

  /// Beginning of the lifetime of this deployment.
  final String deployTime;

  /// Platform hosting this deployment.
  final String platform;

  /// Resource URI for the artifact being deployed taken from the deployable field with the same name.
  final List<String> resourceUri;

  /// End of the lifetime of this deployment.
  final String undeployTime;

  /// Identity of the user that triggered this deployment.
  final String userEmail;

  DeploymentResponse3({
    required this.address,
    required this.config,
    required this.deployTime,
    required this.platform,
    required this.resourceUri,
    required this.undeployTime,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['config'] = config;
    map['deployTime'] = deployTime;
    map['platform'] = platform;
    map['resourceUri'] = resourceUri;
    map['undeployTime'] = undeployTime;
    map['userEmail'] = userEmail;
    return map;
  }

  factory DeploymentResponse3.fromMap(Map<String, dynamic> map) {
    return DeploymentResponse3(
      address: map['address'] as String,
      config: map['config'] as String,
      deployTime: map['deployTime'] as String,
      platform: map['platform'] as String,
      resourceUri: (map['resourceUri'] as List).cast<String>(),
      undeployTime: map['undeployTime'] as String,
      userEmail: map['userEmail'] as String,
    );
  }
}
