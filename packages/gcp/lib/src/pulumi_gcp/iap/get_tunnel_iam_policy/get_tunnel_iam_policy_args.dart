// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTunnelIamPolicy.
class GetTunnelIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  GetTunnelIamPolicyArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetTunnelIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelIamPolicyArgs(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
