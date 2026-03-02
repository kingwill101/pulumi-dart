// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies resource limits for the migration
class MongoDbThrottlingSettingsResponse {
  /// The maximum number of work items (e.g. collection copies) that will be processed in parallel
  final pulumi.Input<int>? maxParallelism;
  /// The percentage of CPU time that the migrator will try to avoid using, from 0 to 100
  final pulumi.Input<int>? minFreeCpu;
  /// The number of megabytes of RAM that the migrator will try to avoid using
  final pulumi.Input<int>? minFreeMemoryMb;

  /// Creates a new [MongoDbThrottlingSettingsResponse].
  /// [maxParallelism] The maximum number of work items (e.g. collection copies) that will be processed in parallel
  /// [minFreeCpu] The percentage of CPU time that the migrator will try to avoid using, from 0 to 100
  /// [minFreeMemoryMb] The number of megabytes of RAM that the migrator will try to avoid using
  MongoDbThrottlingSettingsResponse({
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

  factory MongoDbThrottlingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbThrottlingSettingsResponse(
      maxParallelism: map['maxParallelism'] == null ? null : (map['maxParallelism']! as int).input(),
      minFreeCpu: map['minFreeCpu'] == null ? null : (map['minFreeCpu']! as int).input(),
      minFreeMemoryMb: map['minFreeMemoryMb'] == null ? null : (map['minFreeMemoryMb']! as int).input(),
    );
  }
}

