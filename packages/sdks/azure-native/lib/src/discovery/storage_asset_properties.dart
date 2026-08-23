// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Asset properties
class StorageAssetProperties {
  /// The description
  final pulumi.Input<String> description;
  /// The path to the data within its parent container. This should be relative to the root of the parent container.
  final pulumi.Input<String>? path;

  /// Creates a new [StorageAssetProperties].
  /// [description] The description
  /// [path] The path to the data within its parent container. This should be relative to the root of the parent container.
  const StorageAssetProperties({
    required this.description,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'path': ?path,
    };
  }

  factory StorageAssetProperties.fromMap(Map<String, dynamic> map) {
    return StorageAssetProperties(
      description: pulumi.Input.fromValue(map['description'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
