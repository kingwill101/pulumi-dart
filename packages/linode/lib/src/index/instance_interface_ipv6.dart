// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_interface_ipv6_range.dart';
import 'instance_interface_ipv6_slaac.dart';

class InstanceInterfaceIpv6 {
  /// If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  ///
  /// * `slaac` - (Optional) An array of SLAAC prefixes to use for this interface.
  ///
  /// * `range` - (Optional) An array of IPv6 ranges to use for this interface.
  final bool? isPublic;
  /// A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  final List<InstanceInterfaceIpv6Range>? ranges;
  /// An array of SLAAC prefixes to use for this interface.
  final List<InstanceInterfaceIpv6Slaac>? slaacs;

  /// Creates a new [InstanceInterfaceIpv6].
  /// [isPublic] If true, connections from the interface to IPv6 addresses outside the VPC, and connections from IPv6 addresses outside the VPC to the interface will be permitted. (Default: `false`)
  /// [ranges] A prefix to add to this interface, or `auto` for a new IPv6 prefix to be automatically allocated.
  /// [slaacs] An array of SLAAC prefixes to use for this interface.
  InstanceInterfaceIpv6({
    this.isPublic,
    this.ranges,
    this.slaacs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPublic': ?isPublic,
      'ranges': ?ranges == null ? null : pulumi.Input.encodeList<InstanceInterfaceIpv6Range, Map<String, dynamic>>(ranges!, (value) => value.toMap()),
      'slaacs': ?slaacs == null ? null : pulumi.Input.encodeList<InstanceInterfaceIpv6Slaac, Map<String, dynamic>>(slaacs!, (value) => value.toMap()),
    };
  }

  factory InstanceInterfaceIpv6.fromMap(Map<String, dynamic> map) {
    return InstanceInterfaceIpv6(
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      ranges: map['ranges'] == null ? null : pulumi.Input.decodeList<InstanceInterfaceIpv6Range>(map['ranges'], (value) => InstanceInterfaceIpv6Range.fromMap((value as Map).cast<String, dynamic>())),
      slaacs: map['slaacs'] == null ? null : pulumi.Input.decodeList<InstanceInterfaceIpv6Slaac>(map['slaacs'], (value) => InstanceInterfaceIpv6Slaac.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

