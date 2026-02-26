// ignore_for_file: unused_element, unnecessary_cast

class InstanceGceSetupNetworkInterfaceAccessConfig {
  /// An external IP address associated with this instance. Specify an unused
  /// static external IP address available to the project or leave this field
  /// undefined to use an IP from a shared ephemeral IP address pool. If you
  /// specify a static external IP address, it must live in the same region as
  /// the zone of the instance.
  final String externalIp;

  InstanceGceSetupNetworkInterfaceAccessConfig({
    required this.externalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIp'] = externalIp;
    return map;
  }

  factory InstanceGceSetupNetworkInterfaceAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceGceSetupNetworkInterfaceAccessConfig(
      externalIp: map['externalIp'] as String,
    );
  }
}
