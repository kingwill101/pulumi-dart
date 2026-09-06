// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Asset properties
class StorageAssetPropertiesResponse {
  /// The description
  final pulumi.Input<String> description;
  /// The path to the data within its parent container. This should be relative to the root of the parent container.
  final pulumi.Input<String?>? path;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [StorageAssetPropertiesResponse].
  /// [description] The description
  /// [path] The path to the data within its parent container. This should be relative to the root of the parent container.
  /// [provisioningState] The status of the last operation.
  const StorageAssetPropertiesResponse({
    required this.description,
    this.path,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'path': ?path,
      'provisioningState': provisioningState,
    };
  }

  factory StorageAssetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageAssetPropertiesResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
