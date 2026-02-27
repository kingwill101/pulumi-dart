// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicySecuritycenterArgs {
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;

  InstanceIamPolicySecuritycenterArgs({
    this.name,
    required this.policyData,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policyData'] = policyData;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InstanceIamPolicySecuritycenterArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceIamPolicySecuritycenterArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyData: pulumi.Input.asInput<String>(map['policyData']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
