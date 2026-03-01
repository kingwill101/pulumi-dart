// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_identity.dart';
import 'sharing_profile.dart';
import 'soft_delete_policy.dart';

/// {@template pulumi_compute_gallery_args_doc}
/// The set of arguments for Gallery.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_args_doc}
class GalleryArgs {
  /// The description of this Shared Image Gallery resource. This property is updatable.
  final pulumi.Input<String>? description;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String>? galleryName;
  /// The identity of the gallery, if configured.
  final pulumi.Input<GalleryIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Profile for gallery sharing to subscription or tenant
  final pulumi.Input<SharingProfile>? sharingProfile;
  /// Contains information about the soft deletion policy of the gallery.
  final pulumi.Input<SoftDeletePolicy>? softDeletePolicy;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryArgs].
  /// [description] The description of this Shared Image Gallery resource. This property is updatable.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [identity] The identity of the gallery, if configured.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharingProfile] Profile for gallery sharing to subscription or tenant
  /// [softDeletePolicy] Contains information about the soft deletion policy of the gallery.
  /// [tags] Resource tags.
  GalleryArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? galleryName,
    pulumi.Output<GalleryIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SharingProfile>? sharingProfile,
    pulumi.Output<SoftDeletePolicy>? softDeletePolicy,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      galleryName = pulumi.Input.asOptionalInput<String>(galleryName),
      identity = pulumi.Input.asOptionalInput<GalleryIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharingProfile = pulumi.Input.asOptionalInput<SharingProfile>(sharingProfile),
      softDeletePolicy = pulumi.Input.asOptionalInput<SoftDeletePolicy>(softDeletePolicy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'galleryName': ?galleryName,
      'identity': ?pulumi.Input.mapOptionalInputValue<GalleryIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sharingProfile': ?pulumi.Input.mapOptionalInputValue<SharingProfile, Map<String, dynamic>>(sharingProfile, (value) => value.toMap()),
      'softDeletePolicy': ?pulumi.Input.mapOptionalInputValue<SoftDeletePolicy, Map<String, dynamic>>(softDeletePolicy, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GalleryArgs.fromMap(Map<String, dynamic> map) {
    return GalleryArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      galleryName: map['galleryName'] == null ? null : pulumi.Output.create<String>(map['galleryName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<GalleryIdentity>(GalleryIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharingProfile: map['sharingProfile'] == null ? null : pulumi.Output.create<SharingProfile>(SharingProfile.fromMap((map['sharingProfile'] as Map).cast<String, dynamic>())),
      softDeletePolicy: map['softDeletePolicy'] == null ? null : pulumi.Output.create<SoftDeletePolicy>(SoftDeletePolicy.fromMap((map['softDeletePolicy'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

