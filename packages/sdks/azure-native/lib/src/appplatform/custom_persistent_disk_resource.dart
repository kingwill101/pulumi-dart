// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_volume.dart';

/// Custom persistent disk resource payload.
class CustomPersistentDiskResource {
  /// Properties of the custom persistent disk resource payload.
  final pulumi.Input<AzureFileVolume>? customPersistentDiskProperties;
  /// The resource id of Azure Spring Apps Storage resource.
  final pulumi.Input<String> storageId;

  /// Creates a new [CustomPersistentDiskResource].
  /// [customPersistentDiskProperties] Properties of the custom persistent disk resource payload.
  /// [storageId] The resource id of Azure Spring Apps Storage resource.
  const CustomPersistentDiskResource({
    this.customPersistentDiskProperties,
    required this.storageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPersistentDiskProperties': ?pulumi.Input.mapOptionalInputValue<AzureFileVolume, Map<String, dynamic>>(customPersistentDiskProperties, (value) => value.toMap()),
      'storageId': storageId,
    };
  }

  factory CustomPersistentDiskResource.fromMap(Map<String, dynamic> map) {
    return CustomPersistentDiskResource(
      customPersistentDiskProperties: (() { final guardedValue = map['customPersistentDiskProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileVolume.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageId: pulumi.Input.fromValue(map['storageId'] as String),
    );
  }
}
