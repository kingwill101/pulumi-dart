// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_version_properties.dart';

/// {@template pulumi_compute_gallery_script_version_args_doc}
/// The set of arguments for GalleryScriptVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_script_version_args_doc}
class GalleryScriptVersionArgs {
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the gallery Script Definition to be retrieved.
  final pulumi.Input<String> galleryScriptName;
  /// The name of the gallery Script Version to be retrieved.
  final pulumi.Input<String>? galleryScriptVersionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Describes the properties of a gallery Script Version.
  final pulumi.Input<GalleryScriptVersionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryScriptVersionArgs].
  /// [galleryName] The name of the Shared Image Gallery.
  /// [galleryScriptName] The name of the gallery Script Definition to be retrieved.
  /// [galleryScriptVersionName] The name of the gallery Script Version to be retrieved.
  /// [location] The geo-location where the resource lives
  /// [properties] Describes the properties of a gallery Script Version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  GalleryScriptVersionArgs({
    required this.galleryName,
    required this.galleryScriptName,
    this.galleryScriptVersionName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'galleryScriptName': galleryScriptName,
      'galleryScriptVersionName': ?galleryScriptVersionName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<GalleryScriptVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GalleryScriptVersionArgs.fromMap(Map<String, dynamic> map) {
    return GalleryScriptVersionArgs(
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      galleryScriptName: pulumi.Input.fromValue(map['galleryScriptName'] as String),
      galleryScriptVersionName: (() { final guardedValue = map['galleryScriptVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GalleryScriptVersionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

