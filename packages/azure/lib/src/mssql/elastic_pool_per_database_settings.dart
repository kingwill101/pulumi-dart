// ignore_for_file: unused_element, unnecessary_cast


class ElasticPoolPerDatabaseSettings {
  /// The maximum capacity any one database can consume.
  final double maxCapacity;
  /// The minimum capacity all databases are guaranteed.
  final double minCapacity;

  /// Creates a new [ElasticPoolPerDatabaseSettings].
  /// [maxCapacity] The maximum capacity any one database can consume.
  /// [minCapacity] The minimum capacity all databases are guaranteed.
  ElasticPoolPerDatabaseSettings({
    required this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ElasticPoolPerDatabaseSettings.fromMap(Map<String, dynamic> map) {
    return ElasticPoolPerDatabaseSettings(
      maxCapacity: map['maxCapacity'] as double,
      minCapacity: map['minCapacity'] as double,
    );
  }
}

