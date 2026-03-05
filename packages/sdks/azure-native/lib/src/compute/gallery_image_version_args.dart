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
      galleryImageName: pulumi.Input.fromValue(map['galleryImageName'] as String),
      galleryImageVersionName: (() { final guardedValue = map['galleryImageVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishingProfile: (() { final guardedValue = map['publishingProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryImageVersionPublishingProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restore: (() { final guardedValue = map['restore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      safetyProfile: (() { final guardedValue = map['safetyProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryImageVersionSafetyProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageVersionSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageProfile: pulumi.Input.fromValue(GalleryImageVersionStorageProfile.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

