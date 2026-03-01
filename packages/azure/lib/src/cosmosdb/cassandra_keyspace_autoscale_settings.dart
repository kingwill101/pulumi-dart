// ignore_for_file: unused_element, unnecessary_cast


class CassandraKeyspaceAutoscaleSettings {
  /// The maximum throughput of the Cassandra KeySpace (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final int? maxThroughput;

  /// Creates a new [CassandraKeyspaceAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the Cassandra KeySpace (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  CassandraKeyspaceAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory CassandraKeyspaceAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return CassandraKeyspaceAutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
    );
  }
}

