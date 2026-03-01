// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_gallery_get_gallery_args_doc}
/// Arguments for getGallery.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_gallery_get_gallery_args_doc}
class GetGalleryArgs {
  /// The ID of the Dev Center which contains the Dev Center Gallery.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Gallery.
  final pulumi.Input<String> name;

  /// Creates a new [GetGalleryArgs].
  /// [devCenterId] The ID of the Dev Center which contains the Dev Center Gallery.
  /// [name] The name of this Dev Center Gallery.
  GetGalleryArgs({
    required String devCenterId,
    required String name,
  }) :
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetGalleryArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryArgs(
      devCenterId: map['devCenterId'] as String,
      name: map['name'] as String,
    );
  }
}

