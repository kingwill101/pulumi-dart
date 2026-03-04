// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_egress_config_vpc_lattice.dart';

class ConnectorEgressConfig {
  /// VPC Lattice configuration for routing connector traffic through customer VPCs. Fields documented below.
  final pulumi.Input<ConnectorEgressConfigVpcLattice>? vpcLattice;

  /// Creates a new [ConnectorEgressConfig].
  /// [vpcLattice] VPC Lattice configuration for routing connector traffic through customer VPCs. Fields documented below.
  ConnectorEgressConfig({this.vpcLattice});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcLattice':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectorEgressConfigVpcLattice,
            Map<String, dynamic>
          >(vpcLattice, (value) => value.toMap()),
    };
  }

  factory ConnectorEgressConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorEgressConfig(
      vpcLattice: (() {
        final guardedValue = map['vpcLattice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectorEgressConfigVpcLattice.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
