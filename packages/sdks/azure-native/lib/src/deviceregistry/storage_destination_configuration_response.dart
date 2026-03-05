// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for a storage destination.
class StorageDestinationConfigurationResponse {
  /// The storage destination path.
  final pulumi.Input<String> path;

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
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

