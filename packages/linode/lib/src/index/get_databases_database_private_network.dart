// ignore_for_file: unused_element, unnecessary_cast


class GetDatabasesDatabasePrivateNetwork {
  /// If true, clients outside of the VPC can connect to the database using a public IP address.
  final bool publicAccess;
  /// The ID of the VPC subnet to restrict access to this database using.
  final int subnetId;
  /// The ID of the virtual private cloud (VPC) to restrict access to this database using.
  final int vpcId;

  /// Creates a new [GetDatabasesDatabasePrivateNetwork].
  /// [publicAccess] If true, clients outside of the VPC can connect to the database using a public IP address.
  /// [subnetId] The ID of the VPC subnet to restrict access to this database using.
  /// [vpcId] The ID of the virtual private cloud (VPC) to restrict access to this database using.
  GetDatabasesDatabasePrivateNetwork({
    required this.publicAccess,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicAccess': publicAccess,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory GetDatabasesDatabasePrivateNetwork.fromMap(Map<String, dynamic> map) {
    return GetDatabasesDatabasePrivateNetwork(
      publicAccess: map['publicAccess'] as bool,
      subnetId: map['subnetId'] as int,
      vpcId: map['vpcId'] as int,
    );
  }
}

