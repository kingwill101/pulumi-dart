// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_compute_get_images_get_images_args_doc}
class GetImagesArgs {
  /// The name of the Resource Group in which the Image exists.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to filter the list of images against.
  final pulumi.Input<Map<String, String>>? tagsFilter;

  /// Creates a new [GetImagesArgs].
  /// [resourceGroupName] The name of the Resource Group in which the Image exists.
  /// [tagsFilter] A mapping of tags to filter the list of images against.
  GetImagesArgs({
    required String resourceGroupName,
    Map<String, String>? tagsFilter,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tagsFilter = pulumi.Input.asOptionalInput<Map<String, String>>(tagsFilter);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'tagsFilter': ?tagsFilter,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      tagsFilter: map['tagsFilter'] == null ? null : (map['tagsFilter'] as Map).cast<String, String>(),
    );
  }
}

