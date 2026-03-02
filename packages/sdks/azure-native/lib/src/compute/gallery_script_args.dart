// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_properties.dart';

/// {@template pulumi_compute_gallery_script_args_doc}
/// The set of arguments for GalleryScript.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_script_args_doc}
class GalleryScriptArgs {
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the gallery Script Definition to be retrieved.
  final pulumi.Input<String>? galleryScriptName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Describes the properties of a gallery Script Definition.
  final pulumi.Input<GalleryScriptProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryScriptArgs].
  /// [galleryName] The name of the Shared Image Gallery.
  /// [galleryScriptName] The name of the gallery Script Definition to be retrieved.
  /// [location] The geo-location where the resource lives
  /// [properties] Describes the properties of a gallery Script Definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  GalleryScriptArgs({
    required this.galleryName,
    this.galleryScriptName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'galleryScriptName': ?galleryScriptName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<GalleryScriptProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GalleryScriptArgs.fromMap(Map<String, dynamic> map) {
    return GalleryScriptArgs(
      galleryName: (map['galleryName'] as String).input(),
      galleryScriptName: map['galleryScriptName'] == null ? null : (map['galleryScriptName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (GalleryScriptProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

