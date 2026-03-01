// ignore_for_file: unused_element, unnecessary_cast


class GetReservationSubBlockPhysicalTopology {
  /// The hash of the capacity block within the cluster.
  final String block;
  /// The cluster name of the reservation sub-block.
  final String cluster;
  /// The hash of the capacity sub-block within the capacity block.
  final String subBlock;

  /// Creates a new [GetReservationSubBlockPhysicalTopology].
  /// [block] The hash of the capacity block within the cluster.
  /// [cluster] The cluster name of the reservation sub-block.
  /// [subBlock] The hash of the capacity sub-block within the capacity block.
  GetReservationSubBlockPhysicalTopology({
    required this.block,
    required this.cluster,
    required this.subBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'block': block,
      'cluster': cluster,
      'subBlock': subBlock,
    };
  }

  factory GetReservationSubBlockPhysicalTopology.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockPhysicalTopology(
      block: map['block'] as String,
      cluster: map['cluster'] as String,
      subBlock: map['subBlock'] as String,
    );
  }
}

