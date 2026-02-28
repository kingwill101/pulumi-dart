// ignore_for_file: unused_element, unnecessary_cast


/// The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.
class VpcPeeringConfigDatastreamV1alpha1 {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;
  /// fully qualified name of the VPC Datastream will peer to.
  final String vpcName;

  /// Creates a new [VpcPeeringConfigDatastreamV1alpha1].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpcName] fully qualified name of the VPC Datastream will peer to.
  VpcPeeringConfigDatastreamV1alpha1({
    required this.subnet,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnet': subnet,
      'vpcName': vpcName,
    };
  }

  factory VpcPeeringConfigDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConfigDatastreamV1alpha1(
      subnet: map['subnet'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}

