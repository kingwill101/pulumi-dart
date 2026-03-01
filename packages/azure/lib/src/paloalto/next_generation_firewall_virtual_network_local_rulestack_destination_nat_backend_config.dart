// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig {
  /// The port number to send traffic to.
  final int port;
  /// The IP Address to send the traffic to.
  final String publicIpAddress;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig].
  /// [port] The port number to send traffic to.
  /// [publicIpAddress] The IP Address to send the traffic to.
  NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig({
    required this.port,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackDestinationNatBackendConfig(
      port: map['port'] as int,
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}

