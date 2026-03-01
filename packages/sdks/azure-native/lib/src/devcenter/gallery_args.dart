// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_gallery_args_doc}
/// The set of arguments for Gallery.
/// {@endtemplate}
/// {@macro pulumi_devcenter_gallery_args_doc}
class GalleryArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the gallery.
  final pulumi.Input<String>? galleryName;
  /// The resource ID of the backing Azure Compute Gallery.
  final pulumi.Input<String> galleryResourceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GalleryArgs].
  /// [devCenterName] The name of the devcenter.
  /// [galleryName] The name of the gallery.
  /// [galleryResourceId] The resource ID of the backing Azure Compute Gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GalleryArgs({
    required pulumi.Output<String> devCenterName,
    pulumi.Output<String>? galleryName,
    required pulumi.Output<String> galleryResourceId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      galleryName = pulumi.Input.asOptionalInput<String>(galleryName),
      galleryResourceId = pulumi.Input.asInput<String>(galleryResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'galleryName': ?galleryName,
      'galleryResourceId': galleryResourceId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GalleryArgs.fromMap(Map<String, dynamic> map) {
    return GalleryArgs(
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      galleryName: map['galleryName'] == null ? null : pulumi.Output.create<String>(map['galleryName'] as String),
      galleryResourceId: pulumi.Output.create<String>(map['galleryResourceId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

