// ignore_for_file: unused_element, unnecessary_cast

class FirewallEndpointEndpointSettings {
  /// Indicates whether Jumbo Frames are enabled for the firewall endpoint.
  final bool? jumboFramesEnabled;

  /// Creates a new [FirewallEndpointEndpointSettings].
  /// [jumboFramesEnabled] Indicates whether Jumbo Frames are enabled for the firewall endpoint.
  FirewallEndpointEndpointSettings({this.jumboFramesEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jumboFramesEnabled': ?jumboFramesEnabled};
  }

  factory FirewallEndpointEndpointSettings.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointEndpointSettings(
      jumboFramesEnabled: map['jumboFramesEnabled'] == null
          ? null
          : map['jumboFramesEnabled'] as bool,
    );
  }
}
