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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryScriptProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GalleryScriptArgs.fromMap(Map<String, dynamic> map) {
    return GalleryScriptArgs(
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      galleryScriptName: (() {
        final guardedValue = map['galleryScriptName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryScriptProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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
