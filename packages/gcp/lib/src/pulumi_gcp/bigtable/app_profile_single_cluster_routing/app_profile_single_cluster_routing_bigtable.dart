// ignore_for_file: unused_element, unnecessary_cast

class AppProfileSingleClusterRoutingBigtable {
  /// If true, CheckAndMutateRow and ReadModifyWriteRow requests are allowed by this app profile.
  /// It is unsafe to send these requests to the same table/row/column in multiple clusters.
  final bool? allowTransactionalWrites;

  /// The cluster to which read/write requests should be routed.
  final String clusterId;

  AppProfileSingleClusterRoutingBigtable({
    this.allowTransactionalWrites,
    required this.clusterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowTransactionalWritesValue = allowTransactionalWrites;
    if (allowTransactionalWritesValue != null) {
      map['allowTransactionalWrites'] = allowTransactionalWritesValue;
    }
    map['clusterId'] = clusterId;
    return map;
  }

  factory AppProfileSingleClusterRoutingBigtable.fromMap(
      Map<String, dynamic> map) {
    return AppProfileSingleClusterRoutingBigtable(
      allowTransactionalWrites: map['allowTransactionalWrites'] == null
          ? null
          : map['allowTransactionalWrites'] as bool,
      clusterId: map['clusterId'] as String,
    );
  }
}
