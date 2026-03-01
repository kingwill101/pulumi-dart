// ignore_for_file: unused_element, unnecessary_cast

class GetGlobalClusterMember {
  /// Amazon Resource Name (ARN) of member DB Cluster
  final String dbClusterArn;

  /// Whether the member is the primary DB Cluster
  final bool isWriter;

  /// Creates a new [GetGlobalClusterMember].
  /// [dbClusterArn] Amazon Resource Name (ARN) of member DB Cluster
  /// [isWriter] Whether the member is the primary DB Cluster
  GetGlobalClusterMember({required this.dbClusterArn, required this.isWriter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterArn': dbClusterArn,
      'isWriter': isWriter,
    };
  }

  factory GetGlobalClusterMember.fromMap(Map<String, dynamic> map) {
    return GetGlobalClusterMember(
      dbClusterArn: map['dbClusterArn'] as String,
      isWriter: map['isWriter'] as bool,
    );
  }
}
