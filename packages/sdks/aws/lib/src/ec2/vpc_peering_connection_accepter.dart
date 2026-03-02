// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcPeeringConnectionAccepter {
  /// Allow a local VPC to resolve public DNS hostnames to
  /// private IP addresses when queried from instances in the peer VPC.
  final pulumi.Input<bool>? allowRemoteVpcDnsResolution;

  /// Creates a new [VpcPeeringConnectionAccepter].
  /// [allowRemoteVpcDnsResolution] Allow a local VPC to resolve public DNS hostnames to
  VpcPeeringConnectionAccepter({
    this.allowRemoteVpcDnsResolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRemoteVpcDnsResolution': ?allowRemoteVpcDnsResolution,
    };
  }

  factory VpcPeeringConnectionAccepter.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepter(
      allowRemoteVpcDnsResolution: map['allowRemoteVpcDnsResolution'] == null ? null : (map['allowRemoteVpcDnsResolution'] as bool).input(),
    );
  }
}

