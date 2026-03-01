// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_public_ipv6_assigned_range.dart';
import 'interface_public_ipv6_range.dart';
import 'interface_public_ipv6_shared.dart';
import 'interface_public_ipv6_slaac.dart';

class InterfacePublicIpv6 {
  /// Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  final List<InterfacePublicIpv6AssignedRange>? assignedRanges;
  /// Configured IPv6 range in CIDR notation (2600:0db8::1/64) or prefix-only (/64). Each object in this list supports:
  final List<InterfacePublicIpv6Range>? ranges;
  /// (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  final List<InterfacePublicIpv6Shared>? shareds;
  /// (Computed) The public SLAAC and subnet prefix settings for this public interface. Each object in this set supports:
  final List<InterfacePublicIpv6Slaac>? slaacs;

  /// Creates a new [InterfacePublicIpv6].
  /// [assignedRanges] Assigned additional IPv6 ranges to use in the VPC subnet, calculated from `ranges` input.
  /// [ranges] Configured IPv6 range in CIDR notation (2600:0db8::1/64) or prefix-only (/64). Each object in this list supports:
  /// [shareds] (Computed) The IPv6 ranges assigned to this Linode interface that are also shared with another Linode. Each object in this set supports:
  /// [slaacs] (Computed) The public SLAAC and subnet prefix settings for this public interface. Each object in this set supports:
  InterfacePublicIpv6({
    this.assignedRanges,
    this.ranges,
    this.shareds,
    this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedRanges': ?assignedRanges == null ? null : pulumi.Input.encodeList<InterfacePublicIpv6AssignedRange, Map<String, dynamic>>(assignedRanges!, (value) => value.toMap()),
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<InterfacePublicIpv6Range, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'shareds': ?shareds == null ? null : pulumi.Input.encodeList<InterfacePublicIpv6Shared, Map<String, dynamic>>(shareds!, (value) => value.toMap()),
      'slaacs': ?slaacs == null ? null : pulumi.Input.encodeList<InterfacePublicIpv6Slaac, Map<String, dynamic>>(slaacs!, (value) => value.toMap()),
    };
  }

  factory InterfacePublicIpv6.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv6(
      assignedRanges: map['assignedRanges'] == null ? null : pulumi.Input.decodeList<InterfacePublicIpv6AssignedRange>(map['assignedRanges'], (value) => InterfacePublicIpv6AssignedRange.fromMap((value as Map).cast<String, dynamic>())),
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<InterfacePublicIpv6Range>(map['ranges'], (value) => InterfacePublicIpv6Range.fromMap((value as Map).cast<String, dynamic>())),
      shareds: map['shareds'] == null ? null : pulumi.Input.decodeList<InterfacePublicIpv6Shared>(map['shareds'], (value) => InterfacePublicIpv6Shared.fromMap((value as Map).cast<String, dynamic>())),
      slaacs: map['slaacs'] == null ? null : pulumi.Input.decodeList<InterfacePublicIpv6Slaac>(map['slaacs'], (value) => InterfacePublicIpv6Slaac.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

