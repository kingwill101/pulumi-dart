// ignore_for_file: unused_element, unnecessary_cast

/// CloudRunConfig contains the Cloud Run runtime configuration.
class CloudRunConfig {
  /// Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  final bool? automaticTrafficControl;

  /// Creates a new [CloudRunConfig].
  /// [automaticTrafficControl] Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the user's behalf to facilitate traffic splitting. This is required to be true for CanaryDeployments, but optional for CustomCanaryDeployments.
  CloudRunConfig({this.automaticTrafficControl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticTrafficControl': ?automaticTrafficControl,
    };
  }

  factory CloudRunConfig.fromMap(Map<String, dynamic> map) {
    return CloudRunConfig(
      automaticTrafficControl: map['automaticTrafficControl'] == null
          ? null
          : map['automaticTrafficControl'] as bool,
    );
  }
}
