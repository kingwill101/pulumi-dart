// ignore_for_file: unused_element, unnecessary_cast

class GlobalClusterGlobalClusterMember2 {
  /// ARN of member DB Cluster.
  final String? dbClusterArn;

  /// Whether the member is the primary DB Cluster.
  final bool? isWriter;

  GlobalClusterGlobalClusterMember2({
    this.dbClusterArn,
    this.isWriter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbClusterArnValue = dbClusterArn;
    if (dbClusterArnValue != null) {
      map['dbClusterArn'] = dbClusterArnValue;
    }
    final isWriterValue = isWriter;
    if (isWriterValue != null) {
      map['isWriter'] = isWriterValue;
    }
    return map;
  }

  factory GlobalClusterGlobalClusterMember2.fromMap(Map<String, dynamic> map) {
    return GlobalClusterGlobalClusterMember2(
      dbClusterArn:
          map['dbClusterArn'] == null ? null : map['dbClusterArn'] as String,
      isWriter: map['isWriter'] == null ? null : map['isWriter'] as bool,
    );
  }
}
