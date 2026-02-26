// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTunnelInstanceIamPolicy.
class GetTunnelInstanceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> instance;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  final Input<String>? zone;

  GetTunnelInstanceIamPolicyArgs({
    required this.instance,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetTunnelInstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelInstanceIamPolicyArgs(
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
