// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_images_response.dart';
import 'gallery_extended_location_response.dart';

class GalleryTargetExtendedLocationResponse {
  /// Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
  final EncryptionImagesResponse? encryption;
  /// The name of the extended location.
  final GalleryExtendedLocationResponse? extendedLocation;
  /// The number of replicas of the Image Version to be created per extended location. This property is updatable.
  final int? extendedLocationReplicaCount;
  /// The name of the region.
  final String? name;
  /// Specifies the storage account type to be used to store the image. This property is not updatable.
  final String? storageAccountType;

  /// Creates a new [GalleryTargetExtendedLocationResponse].
  /// [encryption] Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
  /// [extendedLocation] The name of the extended location.
  /// [extendedLocationReplicaCount] The number of replicas of the Image Version to be created per extended location. This property is updatable.
  /// [name] The name of the region.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. This property is not updatable.
  GalleryTargetExtendedLocationResponse({
    this.encryption,
    this.extendedLocation,
    this.extendedLocationReplicaCount,
    this.name,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'extendedLocationReplicaCount': ?extendedLocationReplicaCount,
      'name': ?name,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory GalleryTargetExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return GalleryTargetExtendedLocationResponse(
      encryption: map['encryption'] == null ? null : EncryptionImagesResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : GalleryExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      extendedLocationReplicaCount: map['extendedLocationReplicaCount'] == null ? null : map['extendedLocationReplicaCount'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

