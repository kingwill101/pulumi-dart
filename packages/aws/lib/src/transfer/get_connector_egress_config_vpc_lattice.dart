// ignore_for_file: unused_element, unnecessary_cast

class GetConnectorEgressConfigVpcLattice {
  /// Port number for connecting to the SFTP server through VPC Lattice.
  final int portNumber;

  /// ARN of the VPC Lattice Resource Configuration.
  final String resourceConfigurationArn;

  /// Creates a new [GetConnectorEgressConfigVpcLattice].
  /// [portNumber] Port number for connecting to the SFTP server through VPC Lattice.
  /// [resourceConfigurationArn] ARN of the VPC Lattice Resource Configuration.
  GetConnectorEgressConfigVpcLattice({
    required this.portNumber,
    required this.resourceConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['portNumber'] = portNumber;
    map['resourceConfigurationArn'] = resourceConfigurationArn;
    return map;
  }

  factory GetConnectorEgressConfigVpcLattice.fromMap(Map<String, dynamic> map) {
    return GetConnectorEgressConfigVpcLattice(
      portNumber: map['portNumber'] as int,
      resourceConfigurationArn: map['resourceConfigurationArn'] as String,
    );
  }
}
