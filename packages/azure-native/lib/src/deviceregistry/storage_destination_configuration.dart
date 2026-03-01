// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for a storage destination.
class StorageDestinationConfiguration {
  /// The storage destination path.
  final String path;

  /// Creates a new [StorageDestinationConfiguration].
  /// [path] The storage destination path.
  StorageDestinationConfiguration({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory StorageDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageDestinationConfiguration(
      path: map['path'] as String,
    );
  }
}

