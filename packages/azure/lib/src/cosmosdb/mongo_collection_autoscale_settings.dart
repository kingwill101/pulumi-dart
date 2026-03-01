// ignore_for_file: unused_element, unnecessary_cast


class MongoCollectionAutoscaleSettings {
  /// The maximum throughput of the MongoDB collection (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final int? maxThroughput;

  /// Creates a new [MongoCollectionAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the MongoDB collection (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  MongoCollectionAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory MongoCollectionAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return MongoCollectionAutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
    );
  }
}

