// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RouterNatAddress.
class RouterNatAddressArgs {
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final Input<List<String>>? drainNatIps;

  /// Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// natIpAllocateOption is set to MANUAL_ONLY.
  final Input<List<String>> natIps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where the NAT service reside.
  final Input<String>? region;

  /// The name of the Cloud Router in which the referenced NAT service is configured.
  final Input<String> router;

  /// The name of the Nat service in which this address will be configured.
  final Input<String> routerNat;

  RouterNatAddressArgs({
    this.drainNatIps,
    required this.natIps,
    this.project,
    this.region,
    required this.router,
    required this.routerNat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final drainNatIpsValue = drainNatIps;
    if (drainNatIpsValue != null) {
      map['drainNatIps'] = drainNatIpsValue;
    }
    map['natIps'] = natIps;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['router'] = router;
    map['routerNat'] = routerNat;
    return map;
  }

  factory RouterNatAddressArgs.fromMap(Map<String, dynamic> map) {
    return RouterNatAddressArgs(
      drainNatIps: Input.asOptionalInput<List<String>>(map['drainNatIps']),
      natIps: Input.asInput<List<String>>(map['natIps']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
      routerNat: Input.asInput<String>(map['routerNat']),
    );
  }
}
