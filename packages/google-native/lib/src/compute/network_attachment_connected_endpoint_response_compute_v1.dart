// ignore_for_file: unused_element, unnecessary_cast

/// [Output Only] A connection connected to this network attachment.
class NetworkAttachmentConnectedEndpointResponseComputeV1 {
  /// The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  final String ipAddress;

  /// The IPv6 address assigned to the producer instance network interface. This is only assigned when the stack types of both the instance network interface and the consumer subnet are IPv4_IPv6.
  final String ipv6Address;

  /// The project id or number of the interface to which the IP was assigned.
  final String projectIdOrNum;

  /// Alias IP ranges from the same subnetwork.
  final List<String> secondaryIpCidrRanges;

  /// The status of a connected endpoint to this network attachment.
  final String status;

  /// The subnetwork used to assign the IP to the producer instance network interface.
  final String subnetwork;

  /// The CIDR range of the subnet from which the IPv4 internal IP was allocated from.
  final String subnetworkCidrRange;

  /// Creates a new [NetworkAttachmentConnectedEndpointResponseComputeV1].
  /// [ipAddress] The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  /// [ipv6Address] The IPv6 address assigned to the producer instance network interface. This is only assigned when the stack types of both the instance network interface and the consumer subnet are IPv4_IPv6.
  /// [projectIdOrNum] The project id or number of the interface to which the IP was assigned.
  /// [secondaryIpCidrRanges] Alias IP ranges from the same subnetwork.
  /// [status] The status of a connected endpoint to this network attachment.
  /// [subnetwork] The subnetwork used to assign the IP to the producer instance network interface.
  /// [subnetworkCidrRange] The CIDR range of the subnet from which the IPv4 internal IP was allocated from.
  NetworkAttachmentConnectedEndpointResponseComputeV1({
    required this.ipAddress,
    required this.ipv6Address,
    required this.projectIdOrNum,
    required this.secondaryIpCidrRanges,
    required this.status,
    required this.subnetwork,
    required this.subnetworkCidrRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['ipv6Address'] = ipv6Address;
    map['projectIdOrNum'] = projectIdOrNum;
    map['secondaryIpCidrRanges'] = secondaryIpCidrRanges;
    map['status'] = status;
    map['subnetwork'] = subnetwork;
    map['subnetworkCidrRange'] = subnetworkCidrRange;
    return map;
  }

  factory NetworkAttachmentConnectedEndpointResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return NetworkAttachmentConnectedEndpointResponseComputeV1(
      ipAddress: map['ipAddress'] as String,
      ipv6Address: map['ipv6Address'] as String,
      projectIdOrNum: map['projectIdOrNum'] as String,
      secondaryIpCidrRanges:
          (map['secondaryIpCidrRanges'] as List).cast<String>(),
      status: map['status'] as String,
      subnetwork: map['subnetwork'] as String,
      subnetworkCidrRange: map['subnetworkCidrRange'] as String,
    );
  }
}
