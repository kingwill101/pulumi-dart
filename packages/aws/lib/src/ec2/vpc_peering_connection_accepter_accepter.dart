// ignore_for_file: unused_element, unnecessary_cast

class VpcPeeringConnectionAccepterAccepter {
  /// Indicates whether a local VPC can resolve public DNS hostnames to
  /// private IP addresses when queried from instances in a peer VPC.
  final bool? allowRemoteVpcDnsResolution;

  /// Creates a new [VpcPeeringConnectionAccepterAccepter].
  /// [allowRemoteVpcDnsResolution] Indicates whether a local VPC can resolve public DNS hostnames to
  VpcPeeringConnectionAccepterAccepter({
    this.allowRemoteVpcDnsResolution,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowRemoteVpcDnsResolutionValue = allowRemoteVpcDnsResolution;
    if (allowRemoteVpcDnsResolutionValue != null) {
      map['allowRemoteVpcDnsResolution'] = allowRemoteVpcDnsResolutionValue;
    }
    return map;
  }

  factory VpcPeeringConnectionAccepterAccepter.fromMap(
      Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepterAccepter(
      allowRemoteVpcDnsResolution: map['allowRemoteVpcDnsResolution'] == null
          ? null
          : map['allowRemoteVpcDnsResolution'] as bool,
    );
  }
}
