// ignore_for_file: unused_element, unnecessary_cast


/// Parameters used for replica operations.
class MongoClusterReplicaParameters {
  /// The location of the source cluster
  final String sourceLocation;
  /// The id of the replication source cluster.
  final String sourceResourceId;

  /// Creates a new [MongoClusterReplicaParameters].
  /// [sourceLocation] The location of the source cluster
  /// [sourceResourceId] The id of the replication source cluster.
  MongoClusterReplicaParameters({
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
      sourceLocation: map['sourceLocation'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
    );
  }
}

