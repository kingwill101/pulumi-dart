// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerZoneMapping {
  /// The ID of the elastic IP address (EIP) that is associated with the Internet-facing NLB instance. You can specify one EIP for each zone. You must add at least two zones. You can add a maximum of 10 zones.
  final String? allocationId;
  /// The ID of the elastic network interface (ENI).
  final String? eniId;
  /// IPv4 Local address list. The list of addresses that NLB interacts with backend services.
  final List<String>? ipv4LocalAddresses;
  /// The IPv6 address of the NLB instance.
  final String? ipv6Address;
  /// IPv6 Local address list. The list of addresses that NLB interacts with backend services.
  final List<String>? ipv6LocalAddresses;
  /// The private IP address. You must add at least two zones. You can add a maximum of 10 zones.
  final String? privateIpv4Address;
  /// The public IPv4 address of the NLB instance.
  final String? publicIpv4Address;
  /// Zone Status
  final String? status;
  /// The vSwitch in the zone. You can specify only one vSwitch (subnet) in each zone of an NLB instance. You must add at least two zones. You can add a maximum of 10 zones.
  final String vswitchId;
  /// The ID of the zone of the NLB instance. You must add at least two zones. You can add a maximum of 10 zones.
  /// You can call the [DescribeZones](https://www.alibabacloud.com/help/en/doc-detail/443890.html) operation to query the most recent zone list.
  final String zoneId;

  /// Creates a new [LoadBalancerZoneMapping].
  /// [allocationId] The ID of the elastic IP address (EIP) that is associated with the Internet-facing NLB instance. You can specify one EIP for each zone. You must add at least two zones. You can add a maximum of 10 zones.
  /// [eniId] The ID of the elastic network interface (ENI).
  /// [ipv4LocalAddresses] IPv4 Local address list. The list of addresses that NLB interacts with backend services.
  /// [ipv6Address] The IPv6 address of the NLB instance.
  /// [ipv6LocalAddresses] IPv6 Local address list. The list of addresses that NLB interacts with backend services.
  /// [privateIpv4Address] The private IP address. You must add at least two zones. You can add a maximum of 10 zones.
  /// [publicIpv4Address] The public IPv4 address of the NLB instance.
  /// [status] Zone Status
  /// [vswitchId] The vSwitch in the zone. You can specify only one vSwitch (subnet) in each zone of an NLB instance. You must add at least two zones. You can add a maximum of 10 zones.
  /// [zoneId] The ID of the zone of the NLB instance. You must add at least two zones. You can add a maximum of 10 zones.
  LoadBalancerZoneMapping({
    this.allocationId,
    this.eniId,
    this.ipv4LocalAddresses,
    this.ipv6Address,
    this.ipv6LocalAddresses,
    this.privateIpv4Address,
    this.publicIpv4Address,
    this.status,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'eniId': ?eniId,
      'ipv4LocalAddresses': ?ipv4LocalAddresses,
      'ipv6Address': ?ipv6Address,
      'ipv6LocalAddresses': ?ipv6LocalAddresses,
      'privateIpv4Address': ?privateIpv4Address,
      'publicIpv4Address': ?publicIpv4Address,
      'status': ?status,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory LoadBalancerZoneMapping.fromMap(Map<String, dynamic> map) {
    return LoadBalancerZoneMapping(
      allocationId: map['allocationId'] == null ? null : map['allocationId'] as String,
      eniId: map['eniId'] == null ? null : map['eniId'] as String,
      ipv4LocalAddresses: map['ipv4LocalAddresses'] == null ? null : (map['ipv4LocalAddresses'] as List).cast<String>(),
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      ipv6LocalAddresses: map['ipv6LocalAddresses'] == null ? null : (map['ipv6LocalAddresses'] as List).cast<String>(),
      privateIpv4Address: map['privateIpv4Address'] == null ? null : map['privateIpv4Address'] as String,
      publicIpv4Address: map['publicIpv4Address'] == null ? null : map['publicIpv4Address'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

