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
  GetGalleryScriptArgs({
    required pulumi.Output<String> galleryName,
    required pulumi.Output<String> galleryScriptName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      galleryName = pulumi.Input.asInput<String>(galleryName),
      galleryScriptName = pulumi.Input.asInput<String>(galleryScriptName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'galleryScriptName': galleryScriptName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryScriptArgs(
      galleryName: pulumi.Output.create<String>(map['galleryName'] as String),
      galleryScriptName: pulumi.Output.create<String>(map['galleryScriptName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

