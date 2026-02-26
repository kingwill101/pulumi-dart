// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_connector_egress_config_vpc_lattice/get_connector_egress_config_vpc_lattice.dart';

class GetConnectorEgressConfig {
  /// VPC Lattice configuration. Contains the following attributes:
  final List<GetConnectorEgressConfigVpcLattice> vpcLattices;

  GetConnectorEgressConfig({
    required this.vpcLattices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcLattices'] = Input.encodeList<GetConnectorEgressConfigVpcLattice,
        Map<String, dynamic>>(vpcLattices, (value) => value.toMap());
    return map;
  }

  factory GetConnectorEgressConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectorEgressConfig(
      vpcLattices: Input.decodeList<GetConnectorEgressConfigVpcLattice>(
          map['vpcLattices'],
          (value) => GetConnectorEgressConfigVpcLattice.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
