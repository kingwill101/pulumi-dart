// ignore_for_file: unused_element, unnecessary_cast

/// CloudRunConfig contains the Cloud Run runtime configuration.
class CloudRunConfigResponse {
  /// Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  final bool automaticTrafficControl;

  /// Creates a new [CloudRunConfigResponse].
  /// [automaticTrafficControl] Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  CloudRunConfigResponse({
    required this.automaticTrafficControl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticTrafficControl'] = automaticTrafficControl;
    return map;
  }

  factory CloudRunConfigResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunConfigResponse(
      automaticTrafficControl: map['automaticTrafficControl'] as bool,
    );
  }
}
