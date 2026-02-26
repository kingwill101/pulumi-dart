// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicyArgs4 {
  /// The ID of the instance or a fully qualified identifier for the instance.
  final Input<String>? name;
  final Input<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the Data Fusion instance.
  final Input<String>? region;

  InstanceIamPolicyArgs4({
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

  factory InstanceIamPolicyArgs4.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs4(
      name: Input.asOptionalInput<String>(map['name']),
      policyData: Input.asInput<String>(map['policyData']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
