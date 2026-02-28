// ignore_for_file: unused_element, unnecessary_cast

class GlobalClusterGlobalClusterMember {
  /// ARN of member DB Cluster.
  final String? dbClusterArn;

  /// Whether the member is the primary DB Cluster.
  final bool? isWriter;

  /// Creates a new [GlobalClusterGlobalClusterMember].
  /// [dbClusterArn] ARN of member DB Cluster.
  /// [isWriter] Whether the member is the primary DB Cluster.
  GlobalClusterGlobalClusterMember({
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

  factory GlobalClusterGlobalClusterMember.fromMap(Map<String, dynamic> map) {
    return GlobalClusterGlobalClusterMember(
      dbClusterArn:
          map['dbClusterArn'] == null ? null : map['dbClusterArn'] as String,
      isWriter: map['isWriter'] == null ? null : map['isWriter'] as bool,
    );
  }
}
