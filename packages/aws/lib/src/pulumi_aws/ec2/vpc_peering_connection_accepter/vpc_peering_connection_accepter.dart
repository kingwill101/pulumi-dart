// ignore_for_file: unused_element, unnecessary_cast

class VpcPeeringConnectionAccepter {
  /// Allow a local VPC to resolve public DNS hostnames to
  /// private IP addresses when queried from instances in the peer VPC.
  final bool? allowRemoteVpcDnsResolution;

  VpcPeeringConnectionAccepter({
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

  factory VpcPeeringConnectionAccepter.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepter(
      allowRemoteVpcDnsResolution: map['allowRemoteVpcDnsResolution'] == null
          ? null
          : map['allowRemoteVpcDnsResolution'] as bool,
    );
  }
}
