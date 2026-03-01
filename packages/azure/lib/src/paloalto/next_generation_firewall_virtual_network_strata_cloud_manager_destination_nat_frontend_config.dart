// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig {
  /// The port on which traffic will be received.
  final int port;
  /// The ID of the Public IP Address resource the traffic will be received on.
  final String publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig].
  /// [port] The port on which traffic will be received.
  /// [publicIpAddressId] The ID of the Public IP Address resource the traffic will be received on.
  NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNatFrontendConfig(
      port: map['port'] as int,
      publicIpAddressId: map['publicIpAddressId'] as String,
    );
  }
}

