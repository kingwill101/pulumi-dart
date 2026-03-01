// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_volume.dart';

/// Custom persistent disk resource payload.
class CustomPersistentDiskResource {
  /// Properties of the custom persistent disk resource payload.
  final AzureFileVolume? customPersistentDiskProperties;
  /// The resource id of Azure Spring Apps Storage resource.
  final String storageId;

  /// Creates a new [CustomPersistentDiskResource].
  /// [customPersistentDiskProperties] Properties of the custom persistent disk resource payload.
  /// [storageId] The resource id of Azure Spring Apps Storage resource.
  CustomPersistentDiskResource({
    this.customPersistentDiskProperties,
    required this.storageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPersistentDiskProperties': ?customPersistentDiskProperties == null ? null : customPersistentDiskProperties!.toMap(),
      'storageId': storageId,
    };
  }

  factory CustomPersistentDiskResource.fromMap(Map<String, dynamic> map) {
    return CustomPersistentDiskResource(
      customPersistentDiskProperties: map['customPersistentDiskProperties'] == null ? null : AzureFileVolume.fromMap((map['customPersistentDiskProperties'] as Map).cast<String, dynamic>()),
      storageId: map['storageId'] as String,
    );
  }
}

