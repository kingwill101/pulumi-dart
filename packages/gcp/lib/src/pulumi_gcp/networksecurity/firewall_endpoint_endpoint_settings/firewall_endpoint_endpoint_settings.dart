// ignore_for_file: unused_element, unnecessary_cast

class FirewallEndpointEndpointSettings {
  /// Indicates whether Jumbo Frames are enabled for the firewall endpoint.
  final bool? jumboFramesEnabled;

  FirewallEndpointEndpointSettings({
    this.jumboFramesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jumboFramesEnabledValue = jumboFramesEnabled;
    if (jumboFramesEnabledValue != null) {
      map['jumboFramesEnabled'] = jumboFramesEnabledValue;
    }
    return map;
  }

  factory FirewallEndpointEndpointSettings.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointEndpointSettings(
      jumboFramesEnabled: map['jumboFramesEnabled'] == null
          ? null
          : map['jumboFramesEnabled'] as bool,
    );
  }
}
