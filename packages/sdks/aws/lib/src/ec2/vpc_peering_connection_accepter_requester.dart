// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcPeeringConnectionAccepterRequester {
  /// Indicates whether a local VPC can resolve public DNS hostnames to
  /// private IP addresses when queried from instances in a peer VPC.
  final pulumi.Input<bool>? allowRemoteVpcDnsResolution;

  /// Creates a new [VpcPeeringConnectionAccepterRequester].
  /// [allowRemoteVpcDnsResolution] Indicates whether a local VPC can resolve public DNS hostnames to
  const VpcPeeringConnectionAccepterRequester({
    this.allowRemoteVpcDnsResolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRemoteVpcDnsResolution': ?allowRemoteVpcDnsResolution,
    };
  }

  factory VpcPeeringConnectionAccepterRequester.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepterRequester(
      allowRemoteVpcDnsResolution: (() { final guardedValue = map['allowRemoteVpcDnsResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
