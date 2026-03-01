// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterNetworkConfigSrIovConfig {
  /// Whether to install the SR-IOV operator.
  final bool? enabled;

  /// Creates a new [BareMetalClusterNetworkConfigSrIovConfig].
  /// [enabled] Whether to install the SR-IOV operator.
  BareMetalClusterNetworkConfigSrIovConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory BareMetalClusterNetworkConfigSrIovConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalClusterNetworkConfigSrIovConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
