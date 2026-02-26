// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRuntimeTemplateIamPolicy.
class GetRuntimeTemplateIamPolicyArgs {
  /// The location for the resource: https://cloud.google.com/colab/docs/locations Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> runtimeTemplate;

  GetRuntimeTemplateIamPolicyArgs({
    this.location,
    this.project,
    required this.runtimeTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runtimeTemplate'] = runtimeTemplate;
    return map;
  }

  factory GetRuntimeTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeTemplateIamPolicyArgs(
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      runtimeTemplate: Input.asInput<String>(map['runtimeTemplate']),
    );
  }
}
