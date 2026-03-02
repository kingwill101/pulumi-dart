// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectorEgressConfigVpcLattice {
  /// Port number for connecting to the SFTP server through VPC Lattice.
  final pulumi.Input<int> portNumber;
  /// ARN of the VPC Lattice Resource Configuration.
  final pulumi.Input<String> resourceConfigurationArn;

  /// Creates a new [GetConnectorEgressConfigVpcLattice].
  /// [portNumber] Port number for connecting to the SFTP server through VPC Lattice.
  /// [resourceConfigurationArn] ARN of the VPC Lattice Resource Configuration.
  GetConnectorEgressConfigVpcLattice({
    required this.portNumber,
    required this.resourceConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portNumber': portNumber,
      'resourceConfigurationArn': resourceConfigurationArn,
    };
  }

  factory GetConnectorEgressConfigVpcLattice.fromMap(Map<String, dynamic> map) {
    return GetConnectorEgressConfigVpcLattice(
      portNumber: (map['portNumber'] as int).input(),
      resourceConfigurationArn: (map['resourceConfigurationArn'] as String).input(),
    );
  }
}

