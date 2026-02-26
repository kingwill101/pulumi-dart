// ignore_for_file: unused_element, unnecessary_cast

import '../connector_egress_config_vpc_lattice/connector_egress_config_vpc_lattice.dart';

class ConnectorEgressConfig {
  /// VPC Lattice configuration for routing connector traffic through customer VPCs. Fields documented below.
  final ConnectorEgressConfigVpcLattice? vpcLattice;

  ConnectorEgressConfig({
    this.vpcLattice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vpcLatticeValue = vpcLattice;
    if (vpcLatticeValue != null) {
      map['vpcLattice'] = vpcLatticeValue.toMap();
    }
    return map;
  }

  factory ConnectorEgressConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorEgressConfig(
      vpcLattice: map['vpcLattice'] == null
          ? null
          : ConnectorEgressConfigVpcLattice.fromMap(
              (map['vpcLattice'] as Map).cast<String, dynamic>()),
    );
  }
}
