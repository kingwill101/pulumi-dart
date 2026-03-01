// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_args_doc}
/// Arguments for getGallery.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_args_doc}
class GetGalleryArgs {
  /// The expand query option to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The select expression to apply on the operation.
  final pulumi.Input<String>? select;

  /// Creates a new [GetGalleryArgs].
  /// [expand] The expand query option to apply on the operation.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [select] The select expression to apply on the operation.
  GetGalleryArgs({
    String? expand,
    required String galleryName,
    required String resourceGroupName,
    String? select,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      select = pulumi.Input.asOptionalInput<String>(select);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
      'select': ?select,
    };
  }

  factory GetGalleryArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      galleryName: map['galleryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      select: map['select'] == null ? null : map['select'] as String,
    );
  }
}

