// ignore_for_file: unused_element, unnecessary_cast


class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: ["MONITORING_BACKEND_UNSPECIFIED", "PROMETHEUS", "CLOUD_MONITORING"]
  final List<String> backends;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: ["MONITORING_BACKEND_UNSPECIFIED", "PROMETHEUS", "CLOUD_MONITORING"]
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring({
    required this.backends,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': backends,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring(
      backends: (map['backends'] as List).cast<String>(),
    );
  }
}

