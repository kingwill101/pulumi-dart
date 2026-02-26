// ignore_for_file: unused_element, unnecessary_cast

class ServiceNetworkSettingsNetworkSettings {
  /// The ingress settings for version or service.
  /// Default value is `INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED`.
  /// Possible values are: `INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED`, `INGRESS_TRAFFIC_ALLOWED_ALL`, `INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY`, `INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB`.
  final String? ingressTrafficAllowed;

  ServiceNetworkSettingsNetworkSettings({
    this.ingressTrafficAllowed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ingressTrafficAllowedValue = ingressTrafficAllowed;
    if (ingressTrafficAllowedValue != null) {
      map['ingressTrafficAllowed'] = ingressTrafficAllowedValue;
    }
    return map;
  }

  factory ServiceNetworkSettingsNetworkSettings.fromMap(
      Map<String, dynamic> map) {
    return ServiceNetworkSettingsNetworkSettings(
      ingressTrafficAllowed: map['ingressTrafficAllowed'] == null
          ? null
          : map['ingressTrafficAllowed'] as String,
    );
  }
}
