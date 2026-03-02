// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkIpv6CidrBlock {
  /// The IPv6 CIDR block of the default VPC.
  ///
  /// > **NOTE:**  When `EnableIpv6` is set to `true`, this parameter is required.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// The IPv6 address segment type of the VPC. Value:
  /// - `BGP` (default): Alibaba Cloud BGP IPv6.
  /// - `ChinaMobile`: China Mobile (single line).
  /// - `ChinaUnicom`: China Unicom (single line).
  /// - `ChinaTelecom`: China Telecom (single line).
  ///
  /// > **NOTE:**  If a single-line bandwidth whitelist is enabled, this field can be set to `ChinaTelecom` (China Telecom), `ChinaUnicom` (China Unicom), or `ChinaMobile` (China Mobile).
  final pulumi.Input<String>? ipv6Isp;

  /// Creates a new [NetworkIpv6CidrBlock].
  /// [ipv6CidrBlock] The IPv6 CIDR block of the default VPC.
  /// [ipv6Isp] The IPv6 address segment type of the VPC. Value:
  NetworkIpv6CidrBlock({
    this.ipv6CidrBlock,
    this.ipv6Isp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6Isp': ?ipv6Isp,
    };
  }

  factory NetworkIpv6CidrBlock.fromMap(Map<String, dynamic> map) {
    return NetworkIpv6CidrBlock(
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : (map['ipv6CidrBlock']! as String).input(),
      ipv6Isp: map['ipv6Isp'] == null ? null : (map['ipv6Isp']! as String).input(),
    );
  }
}

