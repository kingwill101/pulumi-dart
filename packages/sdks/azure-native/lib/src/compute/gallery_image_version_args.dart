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
    required pulumi.Output<String> galleryImageName,
    pulumi.Output<String>? galleryImageVersionName,
    required pulumi.Output<String> galleryName,
    pulumi.Output<String>? location,
    pulumi.Output<GalleryImageVersionPublishingProfile>? publishingProfile,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? restore,
    pulumi.Output<GalleryImageVersionSafetyProfile>? safetyProfile,
    pulumi.Output<ImageVersionSecurityProfile>? securityProfile,
    required pulumi.Output<GalleryImageVersionStorageProfile> storageProfile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      galleryImageName = pulumi.Input.asInput<String>(galleryImageName),
      galleryImageVersionName = pulumi.Input.asOptionalInput<String>(galleryImageVersionName),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      location = pulumi.Input.asOptionalInput<String>(location),
      publishingProfile = pulumi.Input.asOptionalInput<GalleryImageVersionPublishingProfile>(publishingProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restore = pulumi.Input.asOptionalInput<bool>(restore),
      safetyProfile = pulumi.Input.asOptionalInput<GalleryImageVersionSafetyProfile>(safetyProfile),
      securityProfile = pulumi.Input.asOptionalInput<ImageVersionSecurityProfile>(securityProfile),
      storageProfile = pulumi.Input.asInput<GalleryImageVersionStorageProfile>(storageProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      galleryImageName: pulumi.Output.create<String>(map['galleryImageName'] as String),
      galleryImageVersionName: map['galleryImageVersionName'] == null ? null : pulumi.Output.create<String>(map['galleryImageVersionName'] as String),
      galleryName: pulumi.Output.create<String>(map['galleryName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publishingProfile: map['publishingProfile'] == null ? null : pulumi.Output.create<GalleryImageVersionPublishingProfile>(GalleryImageVersionPublishingProfile.fromMap((map['publishingProfile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restore: map['restore'] == null ? null : pulumi.Output.create<bool>(map['restore'] as bool),
      safetyProfile: map['safetyProfile'] == null ? null : pulumi.Output.create<GalleryImageVersionSafetyProfile>(GalleryImageVersionSafetyProfile.fromMap((map['safetyProfile'] as Map).cast<String, dynamic>())),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<ImageVersionSecurityProfile>(ImageVersionSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      storageProfile: pulumi.Output.create<GalleryImageVersionStorageProfile>(GalleryImageVersionStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

