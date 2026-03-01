// ignore_for_file: unused_element, unnecessary_cast

/// Network configuration for the instance.
class NetworkConfigResponseFileV1beta1 {
  /// The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  final String connectMode;

  /// IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or IPv6 addresses in the format `{block1}:{block2}:{block3}:{block4}:{block5}:{block6}:{block7}:{block8}`.
  final List<String> ipAddresses;

  /// Internet protocol versions for which the instance has IP addresses assigned. For this version, only MODE_IPV4 is supported.
  final List<String> modes;

  /// The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected.
  final String network;

  /// Optional, reserved_ip_range can have one of the following two types of values. * CIDR range value when using DIRECT_PEERING connect mode. * [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address) when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an allocated IP address range is specified, it must be one of the ranges associated with the private service access connection. When specified as a direct CIDR value, it must be a /29 CIDR block for Basic tier, a /24 CIDR block for High Scale tier, or a /26 CIDR block for Enterprise tier in one of the [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/) that identifies the range of IP addresses reserved for this instance. For example, 10.0.0.0/29, 192.168.0.0/24, or 192.168.0.0/26, respectively. The range you specify can't overlap with either existing subnets or assigned IP address ranges for other Filestore instances in the selected VPC network.
  final String reservedIpRange;

  /// Creates a new [NetworkConfigResponseFileV1beta1].
  /// [connectMode] The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  /// [ipAddresses] IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or IPv6 addresses in the format `{block1}:{block2}:{block3}:{block4}:{block5}:{block6}:{block7}:{block8}`.
  /// [modes] Internet protocol versions for which the instance has IP addresses assigned. For this version, only MODE_IPV4 is supported.
  /// [network] The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected.
  /// [reservedIpRange] Optional, reserved_ip_range can have one of the following two types of values. * CIDR range value when using DIRECT_PEERING connect mode. * [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address) when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an allocated IP address range is specified, it must be one of the ranges associated with the private service access connection. When specified as a direct CIDR value, it must be a /29 CIDR block for Basic tier, a /24 CIDR block for High Scale tier, or a /26 CIDR block for Enterprise tier in one of the [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/) that identifies the range of IP addresses reserved for this instance. For example, 10.0.0.0/29, 192.168.0.0/24, or 192.168.0.0/26, respectively. The range you specify can't overlap with either existing subnets or assigned IP address ranges for other Filestore instances in the selected VPC network.
  NetworkConfigResponseFileV1beta1({
    required this.connectMode,
    required this.ipAddresses,
    required this.modes,
    required this.network,
    required this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectMode': connectMode,
      'ipAddresses': ipAddresses,
      'modes': modes,
      'network': network,
      'reservedIpRange': reservedIpRange,
    };
  }

  factory NetworkConfigResponseFileV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseFileV1beta1(
      connectMode: map['connectMode'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      modes: (map['modes'] as List).cast<String>(),
      network: map['network'] as String,
      reservedIpRange: map['reservedIpRange'] as String,
    );
  }
}
