// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetNetworkProfileDnsSettings {
  /// Specifies an array of DNS servers.
  final List<String> dnsServers;

  /// Creates a new [ScaleSetNetworkProfileDnsSettings].
  /// [dnsServers] Specifies an array of DNS servers.
  ScaleSetNetworkProfileDnsSettings({
    required this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': dnsServers,
    };
  }

  factory ScaleSetNetworkProfileDnsSettings.fromMap(Map<String, dynamic> map) {
    return ScaleSetNetworkProfileDnsSettings(
      dnsServers: (map['dnsServers'] as List).cast<String>(),
    );
  }
}

