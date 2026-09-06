// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_image_version_storage_profile_response.dart';

/// Specifies information about the gallery image version that you want to create or update.
class GalleryImageVersionResponse {
  /// This is the version of the gallery image.
  final pulumi.Input<String?>? name;
  /// This is the storage profile of a Gallery Image Version.
  final pulumi.Input<GalleryImageVersionStorageProfileResponse> storageProfile;

  /// Creates a new [GalleryImageVersionResponse].
  /// [name] This is the version of the gallery image.
  /// [storageProfile] This is the storage profile of a Gallery Image Version.
  const GalleryImageVersionResponse({
    this.name,
    required this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'storageProfile': pulumi.Input.mapInputValue<GalleryImageVersionStorageProfileResponse, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
    };
  }

  factory GalleryImageVersionResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageProfile: pulumi.Input.fromValue(GalleryImageVersionStorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())),
    );
  }
}
