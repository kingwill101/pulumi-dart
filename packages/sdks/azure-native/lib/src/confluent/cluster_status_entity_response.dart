// ignore_for_file: unused_element, unnecessary_cast


/// Status of the cluster record
class ClusterStatusEntityResponse {
  /// The number of Confluent Kafka Units
  final int? cku;
  /// The lifecycle phase of the cluster
  final String? phase;

  /// Creates a new [ClusterStatusEntityResponse].
  /// [cku] The number of Confluent Kafka Units
  /// [phase] The lifecycle phase of the cluster
  ClusterStatusEntityResponse({
    this.cku,
    this.phase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cku': ?cku,
      'phase': ?phase,
    };
  }

  factory ClusterStatusEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStatusEntityResponse(
      cku: map['cku'] == null ? null : map['cku'] as int,
      phase: map['phase'] == null ? null : map['phase'] as String,
    );
  }
}

