// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage configuration.
class StorageConfigurationResponse {
  /// Partition size.
  final pulumi.Input<String>? partitionSize;

  /// Creates a new [StorageConfigurationResponse].
  /// [partitionSize] Partition size.
  StorageConfigurationResponse({
    this.partitionSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionSize': ?partitionSize,
    };
  }

  factory StorageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationResponse(
      partitionSize: (() { final guardedValue = map['partitionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

