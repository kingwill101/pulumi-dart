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
  GalleryInVMAccessControlProfileArgs({
    required String galleryName,
    String? inVMAccessControlProfileName,
    String? location,
    GalleryInVMAccessControlProfileProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      galleryName = pulumi.Input.asInput<String>(galleryName),
      inVMAccessControlProfileName = pulumi.Input.asOptionalInput<String>(inVMAccessControlProfileName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<GalleryInVMAccessControlProfileProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      galleryName: map['galleryName'] as String,
      inVMAccessControlProfileName: map['inVMAccessControlProfileName'] == null ? null : map['inVMAccessControlProfileName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : GalleryInVMAccessControlProfileProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

