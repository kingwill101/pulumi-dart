// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final int port;
  /// The IP Address to send the traffic to.
  final String publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The IP Address to send the traffic to.
  NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaDestinationNatBackendConfig(
      port: map['port'] as int,
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}

