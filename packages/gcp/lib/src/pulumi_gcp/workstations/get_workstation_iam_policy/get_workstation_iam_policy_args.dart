// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkstationIamPolicy.
class GetWorkstationIamPolicyArgs {
  /// The location where the workstation parent resources reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID of the parent workstation cluster.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationClusterId;

  /// The ID of the parent workstation cluster config.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationConfigId;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationId;

  GetWorkstationIamPolicyArgs({
    this.location,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
    required this.workstationId,
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
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    map['workstationId'] = workstationId;
    return map;
  }

  factory GetWorkstationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationIamPolicyArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workstationClusterId:
          pulumi.Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId:
          pulumi.Input.asInput<String>(map['workstationConfigId']),
      workstationId: pulumi.Input.asInput<String>(map['workstationId']),
    );
  }
}
