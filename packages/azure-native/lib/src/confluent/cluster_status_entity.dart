// ignore_for_file: unused_element, unnecessary_cast


/// Status of the cluster record
class ClusterStatusEntity {
  /// The number of Confluent Kafka Units
  final int? cku;
  /// The lifecycle phase of the cluster
  final String? phase;

  /// Creates a new [ClusterStatusEntity].
  /// [cku] The number of Confluent Kafka Units
  /// [phase] The lifecycle phase of the cluster
  ClusterStatusEntity({
    this.cku,
    this.phase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cku': ?cku,
      'phase': ?phase,
    };
  }

  factory ClusterStatusEntity.fromMap(Map<String, dynamic> map) {
    return ClusterStatusEntity(
      cku: map['cku'] == null ? null : map['cku'] as int,
      phase: map['phase'] == null ? null : map['phase'] as String,
    );
  }
}

