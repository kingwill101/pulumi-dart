// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: ["MONITORING_BACKEND_UNSPECIFIED", "PROMETHEUS", "CLOUD_MONITORING"]
  final List<String> backends;

  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring({
    required this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backends'] = backends;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring(
      backends: (map['backends'] as List).cast<String>(),
    );
  }
}
