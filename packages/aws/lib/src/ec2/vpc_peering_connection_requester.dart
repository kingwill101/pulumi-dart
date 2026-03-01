// ignore_for_file: unused_element, unnecessary_cast

class VpcPeeringConnectionRequester {
  /// Allow a local VPC to resolve public DNS hostnames to
  /// private IP addresses when queried from instances in the peer VPC.
  final bool? allowRemoteVpcDnsResolution;

  /// Creates a new [VpcPeeringConnectionRequester].
  /// [allowRemoteVpcDnsResolution] Allow a local VPC to resolve public DNS hostnames to
  VpcPeeringConnectionRequester({this.allowRemoteVpcDnsResolution});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowRemoteVpcDnsResolution': ?allowRemoteVpcDnsResolution,
    };
  }

  factory VpcPeeringConnectionRequester.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionRequester(
      allowRemoteVpcDnsResolution: map['allowRemoteVpcDnsResolution'] == null
          ? null
          : map['allowRemoteVpcDnsResolution'] as bool,
    );
  }
}
