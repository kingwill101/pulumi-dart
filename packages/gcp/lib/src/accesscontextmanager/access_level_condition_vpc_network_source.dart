// ignore_for_file: unused_element, unnecessary_cast

import 'access_level_condition_vpc_network_source_vpc_subnetwork.dart';

class AccessLevelConditionVpcNetworkSource {
  /// Sub networks within a VPC network.
  /// Structure is documented below.
  final AccessLevelConditionVpcNetworkSourceVpcSubnetwork? vpcSubnetwork;

  /// Creates a new [AccessLevelConditionVpcNetworkSource].
  /// [vpcSubnetwork] Sub networks within a VPC network.
  AccessLevelConditionVpcNetworkSource({
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

  factory AccessLevelConditionVpcNetworkSource.fromMap(
      Map<String, dynamic> map) {
    return AccessLevelConditionVpcNetworkSource(
      vpcSubnetwork: map['vpcSubnetwork'] == null
          ? null
          : AccessLevelConditionVpcNetworkSourceVpcSubnetwork.fromMap(
              (map['vpcSubnetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
