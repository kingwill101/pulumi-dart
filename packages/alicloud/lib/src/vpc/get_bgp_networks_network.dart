// ignore_for_file: unused_element, unnecessary_cast


class GetBgpNetworksNetwork {
  /// Advertised BGP networks.
  final String dstCidrBlock;
  /// The ID of the Bgp Network. The value formats as `<router_id>:<dst_cidr_block>`.
  final String id;
  /// The ID of the vRouter.
  final String routerId;
  /// The state of the advertised BGP network.
  final String status;

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
      dstCidrBlock: map['dstCidrBlock'] as String,
      id: map['id'] as String,
      routerId: map['routerId'] as String,
      status: map['status'] as String,
    );
  }
}

