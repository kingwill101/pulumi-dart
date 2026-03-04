// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies resource limits for the migration
class MongoDbThrottlingSettings {
  /// The maximum number of work items (e.g. collection copies) that will be processed in parallel
  final pulumi.Input<int>? maxParallelism;

  /// The percentage of CPU time that the migrator will try to avoid using, from 0 to 100
  final pulumi.Input<int>? minFreeCpu;

  /// The number of megabytes of RAM that the migrator will try to avoid using
  final pulumi.Input<int>? minFreeMemoryMb;

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
      maxParallelism: (() {
        final guardedValue = map['maxParallelism'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minFreeCpu: (() {
        final guardedValue = map['minFreeCpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minFreeMemoryMb: (() {
        final guardedValue = map['minFreeMemoryMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
