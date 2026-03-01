// ignore_for_file: unused_element, unnecessary_cast

/// Unconditionally routes all read/write requests to a specific cluster. This option preserves read-your-writes consistency but does not improve availability.
class SingleClusterRouting {
  /// Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app profile. It is unsafe to send these requests to the same table/row/column in multiple clusters.
  final bool? allowTransactionalWrites;

  /// The cluster to which read/write requests should be routed.
  final String? clusterId;

  /// Creates a new [SingleClusterRouting].
  /// [allowTransactionalWrites] Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app profile. It is unsafe to send these requests to the same table/row/column in multiple clusters.
  /// [clusterId] The cluster to which read/write requests should be routed.
  SingleClusterRouting({this.allowTransactionalWrites, this.clusterId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTransactionalWrites': ?allowTransactionalWrites,
      'clusterId': ?clusterId,
    };
  }

  factory SingleClusterRouting.fromMap(Map<String, dynamic> map) {
    return SingleClusterRouting(
      allowTransactionalWrites: map['allowTransactionalWrites'] == null
          ? null
          : map['allowTransactionalWrites'] as bool,
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
    );
  }
}
