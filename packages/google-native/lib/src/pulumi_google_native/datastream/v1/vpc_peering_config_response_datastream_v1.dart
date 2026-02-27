// ignore_for_file: unused_element, unnecessary_cast

/// The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.
class VpcPeeringConfigResponseDatastreamV1 {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;

  /// Fully qualified name of the VPC that Datastream will peer to. Format: `projects/{project}/global/{networks}/{name}`
  final String vpc;

  VpcPeeringConfigResponseDatastreamV1({
    required this.subnet,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnet'] = subnet;
    map['vpc'] = vpc;
    return map;
  }

  factory VpcPeeringConfigResponseDatastreamV1.fromMap(
      Map<String, dynamic> map) {
    return VpcPeeringConfigResponseDatastreamV1(
      subnet: map['subnet'] as String,
      vpc: map['vpc'] as String,
    );
  }
}
