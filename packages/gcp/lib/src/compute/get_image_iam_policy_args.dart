// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_image_iam_policy_get_image_iam_policy_args_doc}
/// Arguments for getImageIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_image_iam_policy_get_image_iam_policy_args_doc}
class GetImageIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> image;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetImageIamPolicyArgs].
  /// [image] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetImageIamPolicyArgs({required String image, String? project})
    : image = pulumi.Input.asInput<String>(image),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'image': image, 'project': ?project};
  }

  factory GetImageIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetImageIamPolicyArgs(
      image: map['image'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
