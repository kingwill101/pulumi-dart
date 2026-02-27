// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getImageIamPolicy.
class GetImageIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> image;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  GetImageIamPolicyArgs({
    required this.image,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['image'] = image;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImageIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetImageIamPolicyArgs(
      image: pulumi.Input.asInput<String>(map['image']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
