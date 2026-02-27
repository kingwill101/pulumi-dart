// ignore_for_file: unused_element, unnecessary_cast

/// The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.
class VpcPeeringConfigResponseDatastreamV1alpha1 {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;

  /// fully qualified name of the VPC Datastream will peer to.
  final String vpcName;

  VpcPeeringConfigResponseDatastreamV1alpha1({
    required this.subnet,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnet'] = subnet;
    map['vpcName'] = vpcName;
    return map;
  }

  factory VpcPeeringConfigResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return VpcPeeringConfigResponseDatastreamV1alpha1(
      subnet: map['subnet'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}
