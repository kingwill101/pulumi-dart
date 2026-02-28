// ignore_for_file: unused_element, unnecessary_cast

import 'access_levels_access_level_basic_condition_vpc_network_source_vpc_subnetwork.dart';

class AccessLevelsAccessLevelBasicConditionVpcNetworkSource {
  /// Sub networks within a VPC network.
  /// Structure is documented below.
  final AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork?
      vpcSubnetwork;

  /// Creates a new [AccessLevelsAccessLevelBasicConditionVpcNetworkSource].
  /// [vpcSubnetwork] Sub networks within a VPC network.
  AccessLevelsAccessLevelBasicConditionVpcNetworkSource({
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

  factory AccessLevelsAccessLevelBasicConditionVpcNetworkSource.fromMap(
      Map<String, dynamic> map) {
    return AccessLevelsAccessLevelBasicConditionVpcNetworkSource(
      vpcSubnetwork: map['vpcSubnetwork'] == null
          ? null
          : AccessLevelsAccessLevelBasicConditionVpcNetworkSourceVpcSubnetwork
              .fromMap((map['vpcSubnetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
