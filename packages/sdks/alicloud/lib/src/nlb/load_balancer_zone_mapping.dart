// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerZoneMapping {
  /// The ID of the elastic IP address (EIP) that is associated with the Internet-facing NLB instance. You can specify one EIP for each zone. You must add at least two zones. You can add a maximum of 10 zones.
  final pulumi.Input<String>? allocationId;
  /// The ID of the elastic network interface (ENI).
  final pulumi.Input<String>? eniId;
  /// IPv4 Local address list. The list of addresses that NLB interacts with backend services.
  final pulumi.Input<List<String>>? ipv4LocalAddresses;
  /// The IPv6 address of the NLB instance.
  final pulumi.Input<String>? ipv6Address;
  /// IPv6 Local address list. The list of addresses that NLB interacts with backend services.
  final pulumi.Input<List<String>>? ipv6LocalAddresses;
  /// The private IP address. You must add at least two zones. You can add a maximum of 10 zones.
  final pulumi.Input<String>? privateIpv4Address;
  /// The public IPv4 address of the NLB instance.
  final pulumi.Input<String>? publicIpv4Address;
  /// Zone Status
  final pulumi.Input<String>? status;
  /// The vSwitch in the zone. You can specify only one vSwitch (subnet) in each zone of an NLB instance. You must add at least two zones. You can add a maximum of 10 zones.
  final pulumi.Input<String> vswitchId;
  /// The ID of the zone of the NLB instance. You must add at least two zones. You can add a maximum of 10 zones.
  /// You can call the [DescribeZones](https://www.alibabacloud.com/help/en/doc-detail/443890.html) operation to query the most recent zone list.
  final pulumi.Input<String> zoneId;

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
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eniId: (() { final guardedValue = map['eniId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4LocalAddresses: (() { final guardedValue = map['ipv4LocalAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6LocalAddresses: (() { final guardedValue = map['ipv6LocalAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateIpv4Address: (() { final guardedValue = map['privateIpv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpv4Address: (() { final guardedValue = map['publicIpv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

