// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for a storage destination.
class StorageDestinationConfiguration {
  /// The storage destination path.
  final pulumi.Input<String> path;

  /// Creates a new [StorageDestinationConfiguration].
  /// [path] The storage destination path.
  const StorageDestinationConfiguration({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory StorageDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageDestinationConfiguration(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

