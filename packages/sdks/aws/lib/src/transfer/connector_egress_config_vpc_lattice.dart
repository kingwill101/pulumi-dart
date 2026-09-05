// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorEgressConfigVpcLattice {
  /// Port number for connecting to the SFTP server through VPC Lattice. Defaults to 22 if not specified. Must match the port on which the target SFTP server is listening. Valid values are between 1 and 65535.
  final pulumi.Input<int?>? portNumber;
  /// ARN of the VPC Lattice Resource Configuration that defines the target SFTP server location. Must point to a valid Resource Configuration in a VPC with appropriate network connectivity to the SFTP server.
  final pulumi.Input<String> resourceConfigurationArn;

  /// Creates a new [ConnectorEgressConfigVpcLattice].
  /// [portNumber] Port number for connecting to the SFTP server through VPC Lattice. Defaults to 22 if not specified. Must match the port on which the target SFTP server is listening. Valid values are between 1 and 65535.
  /// [resourceConfigurationArn] ARN of the VPC Lattice Resource Configuration that defines the target SFTP server location. Must point to a valid Resource Configuration in a VPC with appropriate network connectivity to the SFTP server.
  const ConnectorEgressConfigVpcLattice({
    this.portNumber,
    required this.resourceConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portNumber': ?portNumber,
      'resourceConfigurationArn': resourceConfigurationArn,
    };
  }

  factory ConnectorEgressConfigVpcLattice.fromMap(Map<String, dynamic> map) {
    return ConnectorEgressConfigVpcLattice(
      portNumber: (() { final guardedValue = map['portNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceConfigurationArn: pulumi.Input.fromValue(map['resourceConfigurationArn'] as String),
    );
  }
}
