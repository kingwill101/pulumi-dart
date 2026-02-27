// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicySecuresourcemanagerArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  InstanceIamPolicySecuresourcemanagerArgs({
    required this.instanceId,
    this.location,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['policyData'] = policyData;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceIamPolicySecuresourcemanagerArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceIamPolicySecuresourcemanagerArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      policyData: pulumi.Input.asInput<String>(map['policyData']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
