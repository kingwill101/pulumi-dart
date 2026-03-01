// ignore_for_file: unused_element, unnecessary_cast


/// Specifies resource limits for the migration
class MongoDbThrottlingSettings {
  /// The maximum number of work items (e.g. collection copies) that will be processed in parallel
  final int? maxParallelism;
  /// The percentage of CPU time that the migrator will try to avoid using, from 0 to 100
  final int? minFreeCpu;
  /// The number of megabytes of RAM that the migrator will try to avoid using
  final int? minFreeMemoryMb;

  /// Creates a new [MongoDbThrottlingSettings].
  /// [maxParallelism] The maximum number of work items (e.g. collection copies) that will be processed in parallel
  /// [minFreeCpu] The percentage of CPU time that the migrator will try to avoid using, from 0 to 100
  /// [minFreeMemoryMb] The number of megabytes of RAM that the migrator will try to avoid using
  MongoDbThrottlingSettings({
    this.maxParallelism,
    this.minFreeCpu,
    this.minFreeMemoryMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxParallelism': ?maxParallelism,
      'minFreeCpu': ?minFreeCpu,
      'minFreeMemoryMb': ?minFreeMemoryMb,
    };
  }

  factory MongoDbThrottlingSettings.fromMap(Map<String, dynamic> map) {
    return MongoDbThrottlingSettings(
      maxParallelism: map['maxParallelism'] == null ? null : map['maxParallelism'] as int,
      minFreeCpu: map['minFreeCpu'] == null ? null : map['minFreeCpu'] as int,
      minFreeMemoryMb: map['minFreeMemoryMb'] == null ? null : map['minFreeMemoryMb'] as int,
    );
  }
}

