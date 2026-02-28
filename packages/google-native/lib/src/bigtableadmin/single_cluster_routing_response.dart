// ignore_for_file: unused_element, unnecessary_cast

/// Unconditionally routes all read/write requests to a specific cluster. This option preserves read-your-writes consistency but does not improve availability.
class SingleClusterRoutingResponse {
  /// Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app profile. It is unsafe to send these requests to the same table/row/column in multiple clusters.
  final bool allowTransactionalWrites;

  /// The cluster to which read/write requests should be routed.
  final String clusterId;

  /// Creates a new [SingleClusterRoutingResponse].
  /// [allowTransactionalWrites] Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app profile. It is unsafe to send these requests to the same table/row/column in multiple clusters.
  /// [clusterId] The cluster to which read/write requests should be routed.
  SingleClusterRoutingResponse({
    required this.allowTransactionalWrites,
    required this.clusterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowTransactionalWrites'] = allowTransactionalWrites;
    map['clusterId'] = clusterId;
    return map;
  }

  factory SingleClusterRoutingResponse.fromMap(Map<String, dynamic> map) {
    return SingleClusterRoutingResponse(
      allowTransactionalWrites: map['allowTransactionalWrites'] as bool,
      clusterId: map['clusterId'] as String,
    );
  }
}
