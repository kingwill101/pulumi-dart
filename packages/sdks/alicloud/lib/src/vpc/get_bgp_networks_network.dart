// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBgpNetworksNetwork {
  /// Advertised BGP networks.
  final pulumi.Input<String> dstCidrBlock;
  /// The ID of the Bgp Network. The value formats as `<router_id>:<dst_cidr_block>`.
  final pulumi.Input<String> id;
  /// The ID of the vRouter.
  final pulumi.Input<String> routerId;
  /// The state of the advertised BGP network.
  final pulumi.Input<String> status;

  /// Creates a new [GetBgpNetworksNetwork].
  /// [dstCidrBlock] Advertised BGP networks.
  /// [id] The ID of the Bgp Network. The value formats as `<router_id>:<dst_cidr_block>`.
  /// [routerId] The ID of the vRouter.
  /// [status] The state of the advertised BGP network.
  GetBgpNetworksNetwork({
    required this.dstCidrBlock,
    required this.id,
    required this.routerId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dstCidrBlock': dstCidrBlock,
      'id': id,
      'routerId': routerId,
      'status': status,
    };
  }

  factory GetBgpNetworksNetwork.fromMap(Map<String, dynamic> map) {
    return GetBgpNetworksNetwork(
      dstCidrBlock: (map['dstCidrBlock'] as String).input(),
      id: (map['id'] as String).input(),
      routerId: (map['routerId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

