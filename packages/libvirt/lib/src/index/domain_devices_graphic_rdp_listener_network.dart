// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicRdpListenerNetwork {
  /// Sets the network address for the Spice network listener.
  final String? address;
  /// Specifies the network to which the Spice listener belongs.
  final String? network;

  /// Creates a new [DomainDevicesGraphicRdpListenerNetwork].
  /// [address] Sets the network address for the Spice network listener.
  /// [network] Specifies the network to which the Spice listener belongs.
  DomainDevicesGraphicRdpListenerNetwork({
    this.address,
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'network': ?network,
    };
  }

  factory DomainDevicesGraphicRdpListenerNetwork.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicRdpListenerNetwork(
      address: map['address'] == null ? null : map['address'] as String,
      network: map['network'] == null ? null : map['network'] as String,
    );
  }
}

