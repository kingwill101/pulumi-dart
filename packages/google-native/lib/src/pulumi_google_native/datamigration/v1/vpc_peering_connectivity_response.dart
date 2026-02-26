// ignore_for_file: unused_element, unnecessary_cast

/// The details of the VPC where the source database is located in Google Cloud. We will use this information to set up the VPC peering connection between Cloud SQL and this VPC.
class VpcPeeringConnectivityResponse {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  final String vpc;

  VpcPeeringConnectivityResponse({
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpc'] = vpc;
    return map;
  }

  factory VpcPeeringConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectivityResponse(
      vpc: map['vpc'] as String,
    );
  }
}
