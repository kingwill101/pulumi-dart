// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_image_version_publishing_profile.dart';
import 'gallery_image_version_safety_profile.dart';
import 'gallery_image_version_storage_profile.dart';
import 'image_version_security_profile.dart';

/// {@template pulumi_compute_gallery_image_version_args_doc}
/// The set of arguments for GalleryImageVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_image_version_args_doc}
class GalleryImageVersionArgs {
  /// The name of the gallery image definition to be retrieved.
  final pulumi.Input<String> galleryImageName;
  /// The name of the gallery image version to be retrieved.
  final pulumi.Input<String>? galleryImageVersionName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The publishing profile of a gallery image Version.
  final pulumi.Input<GalleryImageVersionPublishingProfile>? publishingProfile;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Indicates if this is a soft-delete resource restoration request.
  final pulumi.Input<bool>? restore;
  /// This is the safety profile of the Gallery Image Version.
  final pulumi.Input<GalleryImageVersionSafetyProfile>? safetyProfile;
  /// The security profile of a gallery image version
  final pulumi.Input<ImageVersionSecurityProfile>? securityProfile;
  /// This is the storage profile of a Gallery Image Version.
  final pulumi.Input<GalleryImageVersionStorageProfile> storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryImageVersionArgs].
  /// [galleryImageName] The name of the gallery image definition to be retrieved.
  /// [galleryImageVersionName] The name of the gallery image version to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [location] The geo-location where the resource lives
  /// [publishingProfile] The publishing profile of a gallery image Version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restore] Indicates if this is a soft-delete resource restoration request.
  /// [safetyProfile] This is the safety profile of the Gallery Image Version.
  /// [securityProfile] The security profile of a gallery image version
  /// [storageProfile] This is the storage profile of a Gallery Image Version.
  /// [tags] Resource tags.
  GalleryImageVersionArgs({
    required this.galleryImageName,
    this.galleryImageVersionName,
    required this.galleryName,
    this.location,
    this.publishingProfile,
    required this.resourceGroupName,
    this.restore,
    this.safetyProfile,
    this.securityProfile,
    required this.storageProfile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryImageName': galleryImageName,
      'galleryImageVersionName': ?galleryImageVersionName,
      'galleryName': galleryName,
      'location': ?location,
      'publishingProfile': ?pulumi.Input.mapOptionalInputValue<GalleryImageVersionPublishingProfile, Map<String, dynamic>>(publishingProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'restore': ?restore,
      'safetyProfile': ?pulumi.Input.mapOptionalInputValue<GalleryImageVersionSafetyProfile, Map<String, dynamic>>(safetyProfile, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<ImageVersionSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': pulumi.Input.mapInputValue<GalleryImageVersionStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GalleryImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionArgs(
      galleryImageName: (map['galleryImageName'] as String).input(),
      galleryImageVersionName: map['galleryImageVersionName'] == null ? null : (map['galleryImageVersionName'] as String).input(),
      galleryName: (map['galleryName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      publishingProfile: map['publishingProfile'] == null ? null : (GalleryImageVersionPublishingProfile.fromMap((map['publishingProfile'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restore: map['restore'] == null ? null : (map['restore'] as bool).input(),
      safetyProfile: map['safetyProfile'] == null ? null : (GalleryImageVersionSafetyProfile.fromMap((map['safetyProfile'] as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (ImageVersionSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      storageProfile: (GalleryImageVersionStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

