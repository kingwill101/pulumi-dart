// ignore_for_file: unused_element, unnecessary_cast

class VpcPeeringConnectionAccepterRequester {
  /// Indicates whether a local VPC can resolve public DNS hostnames to
  /// private IP addresses when queried from instances in a peer VPC.
  final bool? allowRemoteVpcDnsResolution;

  VpcPeeringConnectionAccepterRequester({
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

  factory VpcPeeringConnectionAccepterRequester.fromMap(
      Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepterRequester(
      allowRemoteVpcDnsResolution: map['allowRemoteVpcDnsResolution'] == null
          ? null
          : map['allowRemoteVpcDnsResolution'] as bool,
    );
  }
}
