// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceIamPolicy.
class GetInstanceIamPolicyArgs2 {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> instanceName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// A reference to the zone where the machine resides. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no zone is provided in the parent identifier and no
  /// zone is specified, it is taken from the provider configuration.
  final Input<String>? zone;

  GetInstanceIamPolicyArgs2({
    required this.instanceName,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceName'] = instanceName;
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

  factory GetInstanceIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs2(
      instanceName: Input.asInput<String>(map['instanceName']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
