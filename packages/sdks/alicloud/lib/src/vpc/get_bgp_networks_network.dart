// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBgpNetworksNetwork {
  /// Advertised BGP networks.
  final pulumi.Input<String> dstCidrBlock;

  /// The ID of the Bgp Network. The value formats as `&lt;router_id&gt;:&lt;dst_cidr_block&gt;`.
  final pulumi.Input<String> id;

  /// The ID of the vRouter.
  final pulumi.Input<String> routerId;

  /// The state of the advertised BGP network.
  final pulumi.Input<String> status;

  /// Creates a new [GetBgpNetworksNetwork].
  /// [dstCidrBlock] Advertised BGP networks.
  /// [id] The ID of the Bgp Network. The value formats as `&lt;router_id&gt;:&lt;dst_cidr_block&gt;`.
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
      dstCidrBlock: pulumi.Input.fromValue(map['dstCidrBlock'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      routerId: pulumi.Input.fromValue(map['routerId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
