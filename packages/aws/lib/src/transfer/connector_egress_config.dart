// ignore_for_file: unused_element, unnecessary_cast

import 'connector_egress_config_vpc_lattice.dart';

class ConnectorEgressConfig {
  /// VPC Lattice configuration for routing connector traffic through customer VPCs. Fields documented below.
  final ConnectorEgressConfigVpcLattice? vpcLattice;

  /// Creates a new [ConnectorEgressConfig].
  /// [vpcLattice] VPC Lattice configuration for routing connector traffic through customer VPCs. Fields documented below.
  ConnectorEgressConfig({this.vpcLattice});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcLattice': ?vpcLattice == null ? null : vpcLattice!.toMap(),
    };
  }

  factory ConnectorEgressConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorEgressConfig(
      vpcLattice: map['vpcLattice'] == null
          ? null
          : ConnectorEgressConfigVpcLattice.fromMap(
              (map['vpcLattice'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
