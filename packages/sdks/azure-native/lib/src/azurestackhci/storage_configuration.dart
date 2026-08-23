// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage configuration.
class StorageConfiguration {
  /// Partition size.
  final pulumi.Input<String>? partitionSize;

  /// Creates a new [StorageConfiguration].
  /// [partitionSize] Partition size.
  const StorageConfiguration({
    this.partitionSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionSize': ?partitionSize,
    };
  }

  factory StorageConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageConfiguration(
      partitionSize: (() { final guardedValue = map['partitionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
