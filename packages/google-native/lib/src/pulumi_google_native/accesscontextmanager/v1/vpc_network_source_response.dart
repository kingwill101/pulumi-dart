// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_sub_network_response.dart';

/// The originating network source in Google Cloud.
class VpcNetworkSourceResponse {
  /// Sub-segment ranges of a VPC network.
  final VpcSubNetworkResponse vpcSubnetwork;

  VpcNetworkSourceResponse({
    required this.vpcSubnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcSubnetwork'] = vpcSubnetwork.toMap();
    return map;
  }

  factory VpcNetworkSourceResponse.fromMap(Map<String, dynamic> map) {
    return VpcNetworkSourceResponse(
      vpcSubnetwork: VpcSubNetworkResponse.fromMap(
          (map['vpcSubnetwork'] as Map).cast<String, dynamic>()),
    );
  }
}
