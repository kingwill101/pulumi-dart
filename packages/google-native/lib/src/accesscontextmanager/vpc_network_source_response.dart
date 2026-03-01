// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_sub_network_response.dart';

/// The originating network source in Google Cloud.
class VpcNetworkSourceResponse {
  /// Sub-segment ranges of a VPC network.
  final VpcSubNetworkResponse vpcSubnetwork;

  /// Creates a new [VpcNetworkSourceResponse].
  /// [vpcSubnetwork] Sub-segment ranges of a VPC network.
  VpcNetworkSourceResponse({required this.vpcSubnetwork});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vpcSubnetwork': vpcSubnetwork.toMap()};
  }

  factory VpcNetworkSourceResponse.fromMap(Map<String, dynamic> map) {
    return VpcNetworkSourceResponse(
      vpcSubnetwork: VpcSubNetworkResponse.fromMap(
        (map['vpcSubnetwork'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
