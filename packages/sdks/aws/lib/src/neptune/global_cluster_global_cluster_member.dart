// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalClusterGlobalClusterMember {
  /// ARN of member DB Cluster.
  final pulumi.Input<String>? dbClusterArn;
  /// Whether the member is the primary DB Cluster.
  final pulumi.Input<bool>? isWriter;

  /// Creates a new [GlobalClusterGlobalClusterMember].
  /// [dbClusterArn] ARN of member DB Cluster.
  /// [isWriter] Whether the member is the primary DB Cluster.
  GlobalClusterGlobalClusterMember({
    this.dbClusterArn,
    this.isWriter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterArn': ?dbClusterArn,
      'isWriter': ?isWriter,
    };
  }

  factory GlobalClusterGlobalClusterMember.fromMap(Map<String, dynamic> map) {
    return GlobalClusterGlobalClusterMember(
      dbClusterArn: (() { final guardedValue = map['dbClusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isWriter: (() { final guardedValue = map['isWriter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

