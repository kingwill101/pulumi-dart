// ignore_for_file: unused_element, unnecessary_cast

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  /// Each value may be one of: `MONITORING_BACKEND_UNSPECIFIED`, `PROMETHEUS`, `CLOUD_MONITORING`.
  final List<String>? backends;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring({
    this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = backendsValue;
    }
    return map;
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring.fromMap(
      Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigMonitoring(
      backends: map['backends'] == null
          ? null
          : (map['backends'] as List).cast<String>(),
    );
  }
}
