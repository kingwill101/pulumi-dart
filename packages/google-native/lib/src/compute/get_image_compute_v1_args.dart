// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_image_compute_v1_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_image_compute_v1_args_doc}
class GetImageComputeV1Args {
  final pulumi.Input<String> image;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImageComputeV1Args].
  /// [image] Required.
  /// [project] Optional.
  GetImageComputeV1Args({required String image, String? project})
    : image = pulumi.Input.asInput<String>(image),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'image': image, 'project': ?project};
  }

  factory GetImageComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetImageComputeV1Args(
      image: map['image'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
