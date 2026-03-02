// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_volume_response.dart';

/// Custom persistent disk resource payload.
class CustomPersistentDiskResourceResponse {
  /// Properties of the custom persistent disk resource payload.
  final pulumi.Input<AzureFileVolumeResponse>? customPersistentDiskProperties;
  /// The resource id of Azure Spring Apps Storage resource.
  final pulumi.Input<String> storageId;

  /// Creates a new [CustomPersistentDiskResourceResponse].
  /// [customPersistentDiskProperties] Properties of the custom persistent disk resource payload.
  /// [storageId] The resource id of Azure Spring Apps Storage resource.
  CustomPersistentDiskResourceResponse({
    this.customPersistentDiskProperties,
    required this.storageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPersistentDiskProperties': ?pulumi.Input.mapOptionalInputValue<AzureFileVolumeResponse, Map<String, dynamic>>(customPersistentDiskProperties, (value) => value.toMap()),
      'storageId': storageId,
    };
  }

  factory CustomPersistentDiskResourceResponse.fromMap(Map<String, dynamic> map) {
    return CustomPersistentDiskResourceResponse(
      customPersistentDiskProperties: map['customPersistentDiskProperties'] == null ? null : (AzureFileVolumeResponse.fromMap((map['customPersistentDiskProperties']! as Map).cast<String, dynamic>())).input(),
      storageId: (map['storageId'] as String).input(),
    );
  }
}

