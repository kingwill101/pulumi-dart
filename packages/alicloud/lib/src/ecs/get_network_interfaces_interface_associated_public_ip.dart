// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInterfacesInterfaceAssociatedPublicIp {
  final String publicIpAddress;

  /// Creates a new [GetNetworkInterfacesInterfaceAssociatedPublicIp].
  /// [publicIpAddress] Required.
  GetNetworkInterfacesInterfaceAssociatedPublicIp({
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIpAddress': publicIpAddress,
    };
  }

  factory GetNetworkInterfacesInterfaceAssociatedPublicIp.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesInterfaceAssociatedPublicIp(
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}

