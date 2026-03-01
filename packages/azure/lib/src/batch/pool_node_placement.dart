// ignore_for_file: unused_element, unnecessary_cast


class PoolNodePlacement {
  /// The placement policy for allocating nodes in the pool. Values are: "Regional": All nodes in the pool will be allocated in the same region; "Zonal": Nodes in the pool will be spread across different zones with the best effort balancing. Defaults to `Regional`.
  final String? policy;

  /// Creates a new [PoolNodePlacement].
  /// [policy] The placement policy for allocating nodes in the pool. Values are: "Regional": All nodes in the pool will be allocated in the same region; "Zonal": Nodes in the pool will be spread across different zones with the best effort balancing. Defaults to `Regional`.
  PoolNodePlacement({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory PoolNodePlacement.fromMap(Map<String, dynamic> map) {
    return PoolNodePlacement(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}

