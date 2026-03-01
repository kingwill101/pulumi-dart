// ignore_for_file: unused_element, unnecessary_cast


class PeeringConnectionOptionsAccepter {
  /// Allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.
  final bool? allowRemoteVpcDnsResolution;

  /// Creates a new [PeeringConnectionOptionsAccepter].
  /// [allowRemoteVpcDnsResolution] Allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.
  PeeringConnectionOptionsAccepter({
    this.allowRemoteVpcDnsResolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRemoteVpcDnsResolution': ?allowRemoteVpcDnsResolution,
    };
  }

  factory PeeringConnectionOptionsAccepter.fromMap(Map<String, dynamic> map) {
    return PeeringConnectionOptionsAccepter(
      allowRemoteVpcDnsResolution: map['allowRemoteVpcDnsResolution'] == null ? null : map['allowRemoteVpcDnsResolution'] as bool,
    );
  }
}

