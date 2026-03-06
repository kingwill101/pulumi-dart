// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters used for replica operations.
class MongoClusterReplicaParameters {
  /// The location of the source cluster
  final pulumi.Input<String> sourceLocation;
  /// The id of the replication source cluster.
  final pulumi.Input<String> sourceResourceId;

  /// Creates a new [MongoClusterReplicaParameters].
  /// [sourceLocation] The location of the source cluster
  /// [sourceResourceId] The id of the replication source cluster.
  const MongoClusterReplicaParameters({
    required this.sourceLocation,
    required this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLocation': sourceLocation,
      'sourceResourceId': sourceResourceId,
    };
  }

  factory MongoClusterReplicaParameters.fromMap(Map<String, dynamic> map) {
    return MongoClusterReplicaParameters(
      sourceLocation: pulumi.Input.fromValue(map['sourceLocation'] as String),
      sourceResourceId: pulumi.Input.fromValue(map['sourceResourceId'] as String),
    );
  }
}

