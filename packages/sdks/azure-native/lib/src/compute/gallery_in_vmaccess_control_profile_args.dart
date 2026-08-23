// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_in_vmaccess_control_profile_properties.dart';

/// {@template pulumi_compute_gallery_in_vmaccess_control_profile_args_doc}
/// The set of arguments for GalleryInVMAccessControlProfile.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_in_vmaccess_control_profile_args_doc}
class GalleryInVMAccessControlProfileArgs {
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the gallery inVMAccessControlProfile to be retrieved.
  final pulumi.Input<String>? inVMAccessControlProfileName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Describes the properties of a gallery inVMAccessControlProfile.
  final pulumi.Input<GalleryInVMAccessControlProfileProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryInVMAccessControlProfileArgs].
  /// [galleryName] The name of the Shared Image Gallery.
  /// [inVMAccessControlProfileName] The name of the gallery inVMAccessControlProfile to be retrieved.
  /// [location] The geo-location where the resource lives
  /// [properties] Describes the properties of a gallery inVMAccessControlProfile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const GalleryInVMAccessControlProfileArgs({
    required this.galleryName,
    this.inVMAccessControlProfileName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'inVMAccessControlProfileName': ?inVMAccessControlProfileName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<GalleryInVMAccessControlProfileProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GalleryInVMAccessControlProfileArgs.fromMap(Map<String, dynamic> map) {
    return GalleryInVMAccessControlProfileArgs(
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      inVMAccessControlProfileName: (() { final guardedValue = map['inVMAccessControlProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryInVMAccessControlProfileProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
