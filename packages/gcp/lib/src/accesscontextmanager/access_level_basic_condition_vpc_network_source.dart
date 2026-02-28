// ignore_for_file: unused_element, unnecessary_cast

import 'access_level_basic_condition_vpc_network_source_vpc_subnetwork.dart';

class AccessLevelBasicConditionVpcNetworkSource {
  /// Sub networks within a VPC network.
  /// Structure is documented below.
  final AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork? vpcSubnetwork;

  /// Creates a new [AccessLevelBasicConditionVpcNetworkSource].
  /// [vpcSubnetwork] Sub networks within a VPC network.
  AccessLevelBasicConditionVpcNetworkSource({
    this.vpcSubnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vpcSubnetworkValue = vpcSubnetwork;
    if (vpcSubnetworkValue != null) {
      map['vpcSubnetwork'] = vpcSubnetworkValue.toMap();
    }
    return map;
  }

  factory AccessLevelBasicConditionVpcNetworkSource.fromMap(
      Map<String, dynamic> map) {
    return AccessLevelBasicConditionVpcNetworkSource(
      vpcSubnetwork: map['vpcSubnetwork'] == null
          ? null
          : AccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork.fromMap(
              (map['vpcSubnetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
