// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicyWorkbenchArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  InstanceIamPolicyWorkbenchArgs({
    this.location,
    this.name,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policyData'] = policyData;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceIamPolicyWorkbenchArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyWorkbenchArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyData: pulumi.Input.asInput<String>(map['policyData']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
