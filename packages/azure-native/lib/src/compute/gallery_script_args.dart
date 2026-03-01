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
    required String galleryName,
    String? galleryScriptName,
    String? location,
    GalleryScriptProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      galleryName = pulumi.Input.asInput<String>(galleryName),
      galleryScriptName = pulumi.Input.asOptionalInput<String>(galleryScriptName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<GalleryScriptProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      galleryName: map['galleryName'] as String,
      galleryScriptName: map['galleryScriptName'] == null ? null : map['galleryScriptName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : GalleryScriptProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

