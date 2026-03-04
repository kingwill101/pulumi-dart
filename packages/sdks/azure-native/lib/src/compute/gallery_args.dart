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
    this.description,
    this.galleryName,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.sharingProfile,
    this.softDeletePolicy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'galleryName': ?galleryName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sharingProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SharingProfile,
            Map<String, dynamic>
          >(sharingProfile, (value) => value.toMap()),
      'softDeletePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            SoftDeletePolicy,
            Map<String, dynamic>
          >(softDeletePolicy, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GalleryArgs.fromMap(Map<String, dynamic> map) {
    return GalleryArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      galleryName: (() {
        final guardedValue = map['galleryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sharingProfile: (() {
        final guardedValue = map['sharingProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SharingProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      softDeletePolicy: (() {
        final guardedValue = map['softDeletePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoftDeletePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
