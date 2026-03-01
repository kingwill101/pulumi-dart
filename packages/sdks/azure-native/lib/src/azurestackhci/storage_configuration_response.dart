// ignore_for_file: unused_element, unnecessary_cast


/// Storage configuration.
class StorageConfigurationResponse {
  /// Partition size.
  final String? partitionSize;

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
      partitionSize: map['partitionSize'] == null ? null : map['partitionSize'] as String,
    );
  }
}

