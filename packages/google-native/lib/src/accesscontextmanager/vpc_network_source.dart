// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_sub_network.dart';

/// The originating network source in Google Cloud.
class VpcNetworkSource {
  /// Sub-segment ranges of a VPC network.
  final VpcSubNetwork? vpcSubnetwork;

  /// Creates a new [VpcNetworkSource].
  /// [vpcSubnetwork] Sub-segment ranges of a VPC network.
  VpcNetworkSource({this.vpcSubnetwork});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcSubnetwork': ?vpcSubnetwork == null ? null : vpcSubnetwork!.toMap(),
    };
  }

  factory VpcNetworkSource.fromMap(Map<String, dynamic> map) {
    return VpcNetworkSource(
      vpcSubnetwork: map['vpcSubnetwork'] == null
          ? null
          : VpcSubNetwork.fromMap(
              (map['vpcSubnetwork'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
