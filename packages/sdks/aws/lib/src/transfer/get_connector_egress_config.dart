// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_egress_config_vpc_lattice.dart';

class GetConnectorEgressConfig {
  /// VPC Lattice configuration. Contains the following attributes:
  final pulumi.Input<List<GetConnectorEgressConfigVpcLattice>> vpcLattices;

  /// Creates a new [GetConnectorEgressConfig].
  /// [vpcLattices] VPC Lattice configuration. Contains the following attributes:
  GetConnectorEgressConfig({
    required this.vpcLattices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcLattices': pulumi.Input.mapInputValue<List<GetConnectorEgressConfigVpcLattice>, List<Map<String, dynamic>>>(vpcLattices, (value) => pulumi.Input.encodeList<GetConnectorEgressConfigVpcLattice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetConnectorEgressConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectorEgressConfig(
      vpcLattices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectorEgressConfigVpcLattice>(map['vpcLattices']!, (value) => GetConnectorEgressConfigVpcLattice.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

