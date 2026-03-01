// ignore_for_file: unused_element, unnecessary_cast


class GremlinDatabaseAutoscaleSettings {
  /// The maximum throughput of the Gremlin database (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final int? maxThroughput;

  /// Creates a new [GremlinDatabaseAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the Gremlin database (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  GremlinDatabaseAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory GremlinDatabaseAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseAutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
    );
  }
}

