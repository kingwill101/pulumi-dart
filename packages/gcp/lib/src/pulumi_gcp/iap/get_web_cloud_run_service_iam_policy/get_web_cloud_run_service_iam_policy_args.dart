// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWebCloudRunServiceIamPolicy.
class GetWebCloudRunServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> cloudRunServiceName;

  /// The location of a cloud run service. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  GetWebCloudRunServiceIamPolicyArgs({
    required this.cloudRunServiceName,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRunServiceName'] = cloudRunServiceName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetWebCloudRunServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebCloudRunServiceIamPolicyArgs(
      cloudRunServiceName: Input.asInput<String>(map['cloudRunServiceName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
