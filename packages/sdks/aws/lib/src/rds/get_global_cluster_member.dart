// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGlobalClusterMember {
  /// ARN of member DB Cluster
  final pulumi.Input<String> dbClusterArn;
  /// Whether the member is the primary DB Cluster
  final pulumi.Input<bool> isWriter;

  /// Creates a new [GetGlobalClusterMember].
  /// [dbClusterArn] ARN of member DB Cluster
  /// [isWriter] Whether the member is the primary DB Cluster
  const GetGlobalClusterMember({
    required this.dbClusterArn,
    required this.isWriter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterArn': dbClusterArn,
      'isWriter': isWriter,
    };
  }

  factory GetGlobalClusterMember.fromMap(Map<String, dynamic> map) {
    return GetGlobalClusterMember(
      dbClusterArn: pulumi.Input.fromValue(map['dbClusterArn'] as String),
      isWriter: pulumi.Input.fromValue(map['isWriter'] as bool),
    );
  }
}
