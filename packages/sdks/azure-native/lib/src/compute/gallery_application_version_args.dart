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
  final pulumi.Input<String>? galleryApplicationVersionName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The publishing profile of a gallery image version.
  final pulumi.Input<GalleryApplicationVersionPublishingProfile> publishingProfile;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The safety profile of the Gallery Application Version.
  final pulumi.Input<GalleryApplicationVersionSafetyProfile>? safetyProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryApplicationVersionArgs].
  /// [galleryApplicationName] The name of the gallery Application Definition to be retrieved.
  /// [galleryApplicationVersionName] The name of the gallery Application Version to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [location] The geo-location where the resource lives
  /// [publishingProfile] The publishing profile of a gallery image version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [safetyProfile] The safety profile of the Gallery Application Version.
  /// [tags] Resource tags.
  GalleryApplicationVersionArgs({
    required pulumi.Output<String> galleryApplicationName,
    pulumi.Output<String>? galleryApplicationVersionName,
    required pulumi.Output<String> galleryName,
    pulumi.Output<String>? location,
    required pulumi.Output<GalleryApplicationVersionPublishingProfile> publishingProfile,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<GalleryApplicationVersionSafetyProfile>? safetyProfile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      galleryApplicationName = pulumi.Input.asInput<String>(galleryApplicationName),
      galleryApplicationVersionName = pulumi.Input.asOptionalInput<String>(galleryApplicationVersionName),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      location = pulumi.Input.asOptionalInput<String>(location),
      publishingProfile = pulumi.Input.asInput<GalleryApplicationVersionPublishingProfile>(publishingProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      safetyProfile = pulumi.Input.asOptionalInput<GalleryApplicationVersionSafetyProfile>(safetyProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      galleryApplicationName: pulumi.Output.create<String>(map['galleryApplicationName'] as String),
      galleryApplicationVersionName: map['galleryApplicationVersionName'] == null ? null : pulumi.Output.create<String>(map['galleryApplicationVersionName'] as String),
      galleryName: pulumi.Output.create<String>(map['galleryName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publishingProfile: pulumi.Output.create<GalleryApplicationVersionPublishingProfile>(GalleryApplicationVersionPublishingProfile.fromMap((map['publishingProfile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      safetyProfile: map['safetyProfile'] == null ? null : pulumi.Output.create<GalleryApplicationVersionSafetyProfile>(GalleryApplicationVersionSafetyProfile.fromMap((map['safetyProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

