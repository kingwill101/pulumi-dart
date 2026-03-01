// ignore_for_file: unused_element, unnecessary_cast


/// Storage configuration.
class StorageConfiguration {
  /// Partition size.
  final String? partitionSize;

  /// Creates a new [StorageConfiguration].
  /// [partitionSize] Partition size.
  StorageConfiguration({
    this.partitionSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionSize': ?partitionSize,
    };
  }

  factory StorageConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageConfiguration(
      partitionSize: map['partitionSize'] == null ? null : map['partitionSize'] as String,
    );
  }
}

