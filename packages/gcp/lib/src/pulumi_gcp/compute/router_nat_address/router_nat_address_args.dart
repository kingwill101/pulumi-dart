// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RouterNatAddress.
class RouterNatAddressArgs {
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  final pulumi.Input<List<String>>? drainNatIps;

  /// Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// natIpAllocateOption is set to MANUAL_ONLY.
  final pulumi.Input<List<String>> natIps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region where the NAT service reside.
  final pulumi.Input<String>? region;

  /// The name of the Cloud Router in which the referenced NAT service is configured.
  final pulumi.Input<String> router;

  /// The name of the Nat service in which this address will be configured.
  final pulumi.Input<String> routerNat;

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
      drainNatIps:
          pulumi.Input.asOptionalInput<List<String>>(map['drainNatIps']),
      natIps: pulumi.Input.asInput<List<String>>(map['natIps']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      router: pulumi.Input.asInput<String>(map['router']),
      routerNat: pulumi.Input.asInput<String>(map['routerNat']),
    );
  }
}
