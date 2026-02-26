// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getManagementServerIamPolicy.
class GetManagementServerIamPolicyArgs {
  final Input<String> location;
  final Input<String> managementServerId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetManagementServerIamPolicyArgs({
    required this.location,
    required this.managementServerId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['managementServerId'] = managementServerId;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetManagementServerIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      managementServerId: Input.asInput<String>(map['managementServerId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
