// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_vpc_ipv6_assigned_range.dart';
import 'interface_vpc_ipv6_assigned_slaac.dart';
import 'interface_vpc_ipv6_range.dart';
import 'interface_vpc_ipv6_slaac.dart';

class InterfaceVpcIpv6 {
  /// Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  final List<InterfaceVpcIpv6AssignedRange>? assignedRanges;
  /// Assigned IPv6 SLAAC address ranges to use in the VPC subnet, calculated from `slaac` input.
  final List<InterfaceVpcIpv6AssignedSlaac>? assignedSlaacs;
  /// Indicates whether the IPv6 configuration profile interface is public. (Default `false`)
  final bool? isPublic;
  /// Defines additional IPv6 network ranges.
  final List<InterfaceVpcIpv6Range>? ranges;
  /// Defines IPv6 SLAAC address ranges. An address is automatically generated from the assigned /64 prefix using the Linode’s MAC address, just like on public IPv6 interfaces. Router advertisements (RA) are sent to the Linode, so standard SLAAC configuration works without any changes.
  final List<InterfaceVpcIpv6Slaac>? slaacs;

  /// Creates a new [InterfaceVpcIpv6].
  /// [assignedRanges] Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  /// [assignedSlaacs] Assigned IPv6 SLAAC address ranges to use in the VPC subnet, calculated from `slaac` input.
  /// [isPublic] Indicates whether the IPv6 configuration profile interface is public. (Default `false`)
  /// [ranges] Defines additional IPv6 network ranges.
  /// [slaacs] Defines IPv6 SLAAC address ranges. An address is automatically generated from the assigned /64 prefix using the Linode’s MAC address, just like on public IPv6 interfaces. Router advertisements (RA) are sent to the Linode, so standard SLAAC configuration works without any changes.
  InterfaceVpcIpv6({
    this.assignedRanges,
    this.assignedSlaacs,
    this.isPublic,
    this.ranges,
    this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedRanges': ?assignedRanges == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv6AssignedRange, Map<String, dynamic>>(assignedRanges!, (value) => value.toMap()),
      'assignedSlaacs': ?assignedSlaacs == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv6AssignedSlaac, Map<String, dynamic>>(assignedSlaacs!, (value) => value.toMap()),
      'isPublic': ?isPublic,
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv6Range, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'slaacs': ?slaacs == null ? null : pulumi.Input.encodeList<InterfaceVpcIpv6Slaac, Map<String, dynamic>>(slaacs!, (value) => value.toMap()),
    };
  }

  factory InterfaceVpcIpv6.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv6(
      assignedRanges: map['assignedRanges'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv6AssignedRange>(map['assignedRanges'], (value) => InterfaceVpcIpv6AssignedRange.fromMap((value as Map).cast<String, dynamic>())),
      assignedSlaacs: map['assignedSlaacs'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv6AssignedSlaac>(map['assignedSlaacs'], (value) => InterfaceVpcIpv6AssignedSlaac.fromMap((value as Map).cast<String, dynamic>())),
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv6Range>(map['ranges'], (value) => InterfaceVpcIpv6Range.fromMap((value as Map).cast<String, dynamic>())),
      slaacs: map['slaacs'] == null ? null : pulumi.Input.decodeList<InterfaceVpcIpv6Slaac>(map['slaacs'], (value) => InterfaceVpcIpv6Slaac.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

