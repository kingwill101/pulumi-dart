// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_volume_response.dart';

/// Custom persistent disk resource payload.
class CustomPersistentDiskResourceResponse {
  /// Properties of the custom persistent disk resource payload.
  final AzureFileVolumeResponse? customPersistentDiskProperties;
  /// The resource id of Azure Spring Apps Storage resource.
  final String storageId;

  /// Creates a new [CustomPersistentDiskResourceResponse].
  /// [customPersistentDiskProperties] Properties of the custom persistent disk resource payload.
  /// [storageId] The resource id of Azure Spring Apps Storage resource.
  CustomPersistentDiskResourceResponse({
    this.customPersistentDiskProperties,
    required this.storageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPersistentDiskProperties': ?customPersistentDiskProperties == null ? null : customPersistentDiskProperties!.toMap(),
      'storageId': storageId,
    };
  }

  factory CustomPersistentDiskResourceResponse.fromMap(Map<String, dynamic> map) {
    return CustomPersistentDiskResourceResponse(
      customPersistentDiskProperties: map['customPersistentDiskProperties'] == null ? null : AzureFileVolumeResponse.fromMap((map['customPersistentDiskProperties'] as Map).cast<String, dynamic>()),
      storageId: map['storageId'] as String,
    );
  }
}

