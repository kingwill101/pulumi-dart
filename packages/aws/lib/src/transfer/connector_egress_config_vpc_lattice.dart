// ignore_for_file: unused_element, unnecessary_cast

class ConnectorEgressConfigVpcLattice {
  /// Port number for connecting to the SFTP server through VPC Lattice. Defaults to 22 if not specified. Must match the port on which the target SFTP server is listening. Valid values are between 1 and 65535.
  final int? portNumber;

  /// ARN of the VPC Lattice Resource Configuration that defines the target SFTP server location. Must point to a valid Resource Configuration in a VPC with appropriate network connectivity to the SFTP server.
  final String resourceConfigurationArn;

  /// Creates a new [ConnectorEgressConfigVpcLattice].
  /// [portNumber] Port number for connecting to the SFTP server through VPC Lattice. Defaults to 22 if not specified. Must match the port on which the target SFTP server is listening. Valid values are between 1 and 65535.
  /// [resourceConfigurationArn] ARN of the VPC Lattice Resource Configuration that defines the target SFTP server location. Must point to a valid Resource Configuration in a VPC with appropriate network connectivity to the SFTP server.
  ConnectorEgressConfigVpcLattice({
    this.portNumber,
    required this.resourceConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portNumberValue = portNumber;
    if (portNumberValue != null) {
      map['portNumber'] = portNumberValue;
    }
    map['resourceConfigurationArn'] = resourceConfigurationArn;
    return map;
  }

  factory ConnectorEgressConfigVpcLattice.fromMap(Map<String, dynamic> map) {
    return ConnectorEgressConfigVpcLattice(
      portNumber: map['portNumber'] == null ? null : map['portNumber'] as int,
      resourceConfigurationArn: map['resourceConfigurationArn'] as String,
    );
  }
}
