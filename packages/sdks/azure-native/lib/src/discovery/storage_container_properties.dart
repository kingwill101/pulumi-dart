// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Container properties
class StorageContainerProperties {
  /// Storage store properties
  final pulumi.Input<dynamic> storageStore;

  /// Creates a new [StorageContainerProperties].
  /// [storageStore] Storage store properties
  const StorageContainerProperties({
    required this.storageStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageStore': storageStore,
    };
  }

  factory StorageContainerProperties.fromMap(Map<String, dynamic> map) {
    return StorageContainerProperties(
      storageStore: pulumi.Input.fromValue(map['storageStore']),
    );
  }
}
