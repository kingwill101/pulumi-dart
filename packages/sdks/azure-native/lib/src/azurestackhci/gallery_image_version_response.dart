// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_image_version_storage_profile_response.dart';

/// Specifies information about the gallery image version that you want to create or update.
class GalleryImageVersionResponse {
  /// This is the version of the gallery image.
  final String? name;
  /// This is the storage profile of a Gallery Image Version.
  final GalleryImageVersionStorageProfileResponse storageProfile;

  /// Creates a new [GalleryImageVersionResponse].
  /// [name] This is the version of the gallery image.
  /// [storageProfile] This is the storage profile of a Gallery Image Version.
  GalleryImageVersionResponse({
    this.name,
    required this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'storageProfile': storageProfile.toMap(),
    };
  }

  factory GalleryImageVersionResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionResponse(
      name: map['name'] == null ? null : map['name'] as String,
      storageProfile: GalleryImageVersionStorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

