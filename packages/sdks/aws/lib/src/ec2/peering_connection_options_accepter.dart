// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PeeringConnectionOptionsAccepter {
  /// Allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.
  final pulumi.Input<bool>? allowRemoteVpcDnsResolution;

  /// Creates a new [PeeringConnectionOptionsAccepter].
  /// [allowRemoteVpcDnsResolution] Allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.
  const PeeringConnectionOptionsAccepter({
    this.allowRemoteVpcDnsResolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRemoteVpcDnsResolution': ?allowRemoteVpcDnsResolution,
    };
  }

  factory PeeringConnectionOptionsAccepter.fromMap(Map<String, dynamic> map) {
    return PeeringConnectionOptionsAccepter(
      allowRemoteVpcDnsResolution: (() { final guardedValue = map['allowRemoteVpcDnsResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

