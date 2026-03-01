// ignore_for_file: unused_element, unnecessary_cast


class NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig {
  /// The port on which traffic will be received.
  final int port;
  /// The ID of the Public IP Address resource the traffic will be received on.
  final String publicIpAddressId;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig].
  /// [port] The port on which traffic will be received.
  /// [publicIpAddressId] The ID of the Public IP Address resource the traffic will be received on.
  NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig({
    required this.port,
    required this.publicIpAddressId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'publicIpAddressId': publicIpAddressId,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerDestinationNatFrontendConfig(
      port: map['port'] as int,
      publicIpAddressId: map['publicIpAddressId'] as String,
    );
  }
}

