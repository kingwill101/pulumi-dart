// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for a storage destination.
class StorageDestinationConfigurationResponse {
  /// The storage destination path.
  final String path;

  /// Creates a new [StorageDestinationConfigurationResponse].
  /// [path] The storage destination path.
  StorageDestinationConfigurationResponse({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory StorageDestinationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return StorageDestinationConfigurationResponse(
      path: map['path'] as String,
    );
  }
}

