// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_image_version_args_doc}
/// Arguments for getGalleryImageVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_image_version_args_doc}
class GetGalleryImageVersionArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The name of the gallery image definition to be retrieved.
  final pulumi.Input<String> galleryImageName;
  /// The name of the gallery image version to be retrieved.
  final pulumi.Input<String> galleryImageVersionName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryImageVersionArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [galleryImageName] The name of the gallery image definition to be retrieved.
  /// [galleryImageVersionName] The name of the gallery image version to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGalleryImageVersionArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> galleryImageName,
    required pulumi.Output<String> galleryImageVersionName,
    required pulumi.Output<String> galleryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      galleryImageName = pulumi.Input.asInput<String>(galleryImageName),
      galleryImageVersionName = pulumi.Input.asInput<String>(galleryImageVersionName),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'galleryImageName': galleryImageName,
      'galleryImageVersionName': galleryImageVersionName,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryImageVersionArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      galleryImageName: pulumi.Output.create<String>(map['galleryImageName'] as String),
      galleryImageVersionName: pulumi.Output.create<String>(map['galleryImageVersionName'] as String),
      galleryName: pulumi.Output.create<String>(map['galleryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

