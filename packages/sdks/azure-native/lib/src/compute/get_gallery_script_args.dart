// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_script_args_doc}
/// Arguments for getGalleryScript.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_script_args_doc}
class GetGalleryScriptArgs {
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the gallery Script Definition to be retrieved.
  final pulumi.Input<String> galleryScriptName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryScriptArgs].
  /// [galleryName] The name of the Shared Image Gallery.
  /// [galleryScriptName] The name of the gallery Script Definition to be retrieved.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetGalleryScriptArgs({
    required this.galleryName,
    required this.galleryScriptName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'galleryScriptName': galleryScriptName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryScriptArgs(
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      galleryScriptName: pulumi.Input.fromValue(map['galleryScriptName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
