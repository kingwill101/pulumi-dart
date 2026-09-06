// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_version_publishing_profile.dart';
import 'gallery_application_version_safety_profile.dart';

/// {@template pulumi_compute_gallery_application_version_args_doc}
/// The set of arguments for GalleryApplicationVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_application_version_args_doc}
class GalleryApplicationVersionArgs {
  /// The name of the gallery Application Definition to be retrieved.
  final pulumi.Input<String> galleryApplicationName;
  /// The name of the gallery Application Version to be retrieved.
  final pulumi.Input<String?>? galleryApplicationVersionName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The publishing profile of a gallery image version.
  final pulumi.Input<GalleryApplicationVersionPublishingProfile> publishingProfile;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The safety profile of the Gallery Application Version.
  final pulumi.Input<GalleryApplicationVersionSafetyProfile?>? safetyProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GalleryApplicationVersionArgs].
  /// [galleryApplicationName] The name of the gallery Application Definition to be retrieved.
  /// [galleryApplicationVersionName] The name of the gallery Application Version to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [location] The geo-location where the resource lives
  /// [publishingProfile] The publishing profile of a gallery image version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [safetyProfile] The safety profile of the Gallery Application Version.
  /// [tags] Resource tags.
  const GalleryApplicationVersionArgs({
    required this.galleryApplicationName,
    this.galleryApplicationVersionName,
    required this.galleryName,
    this.location,
    required this.publishingProfile,
    required this.resourceGroupName,
    this.safetyProfile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryApplicationName': galleryApplicationName,
      'galleryApplicationVersionName': ?galleryApplicationVersionName,
      'galleryName': galleryName,
      'location': ?location,
      'publishingProfile': pulumi.Input.mapInputValue<GalleryApplicationVersionPublishingProfile, Map<String, dynamic>>(publishingProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'safetyProfile': ?pulumi.Input.mapOptionalInputValue<GalleryApplicationVersionSafetyProfile, Map<String, dynamic>>(safetyProfile, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GalleryApplicationVersionArgs.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionArgs(
      galleryApplicationName: pulumi.Input.fromValue(map['galleryApplicationName'] as String),
      galleryApplicationVersionName: (() { final guardedValue = map['galleryApplicationVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishingProfile: pulumi.Input.fromValue(GalleryApplicationVersionPublishingProfile.fromMap((map['publishingProfile']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      safetyProfile: (() { final guardedValue = map['safetyProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryApplicationVersionSafetyProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
