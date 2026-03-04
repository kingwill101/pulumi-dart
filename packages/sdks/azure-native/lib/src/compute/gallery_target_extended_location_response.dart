// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_images_response.dart';
import 'gallery_extended_location_response.dart';

class GalleryTargetExtendedLocationResponse {
  /// Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
  final pulumi.Input<EncryptionImagesResponse>? encryption;

  /// The name of the extended location.
  final pulumi.Input<GalleryExtendedLocationResponse>? extendedLocation;

  /// The number of replicas of the Image Version to be created per extended location. This property is updatable.
  final pulumi.Input<int>? extendedLocationReplicaCount;

  /// The name of the region.
  final pulumi.Input<String>? name;

  /// Specifies the storage account type to be used to store the image. This property is not updatable.
  final pulumi.Input<String>? storageAccountType;

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
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionImagesResponse,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryExtendedLocationResponse,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'extendedLocationReplicaCount': ?extendedLocationReplicaCount,
      'name': ?name,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory GalleryTargetExtendedLocationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GalleryTargetExtendedLocationResponse(
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionImagesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryExtendedLocationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      extendedLocationReplicaCount: (() {
        final guardedValue = map['extendedLocationReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountType: (() {
        final guardedValue = map['storageAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
