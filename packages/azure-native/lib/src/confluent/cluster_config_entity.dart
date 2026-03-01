// ignore_for_file: unused_element, unnecessary_cast


/// The configuration of the Kafka cluster
class ClusterConfigEntity {
  /// The lifecycle phase of the cluster
  final String? kind;

  /// Creates a new [ClusterConfigEntity].
  /// [kind] The lifecycle phase of the cluster
  ClusterConfigEntity({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
    };
  }

  factory ClusterConfigEntity.fromMap(Map<String, dynamic> map) {
    return ClusterConfigEntity(
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}

