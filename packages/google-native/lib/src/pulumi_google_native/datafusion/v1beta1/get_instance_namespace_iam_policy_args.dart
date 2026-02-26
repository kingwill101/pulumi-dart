// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceNamespaceIamPolicy.
class GetInstanceNamespaceIamPolicyArgs {
  final Input<String> instanceId;
  final Input<String> location;
  final Input<String> namespaceId;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetInstanceNamespaceIamPolicyArgs({
    required this.instanceId,
    required this.location,
    required this.namespaceId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['location'] = location;
    map['namespaceId'] = namespaceId;
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

  factory GetInstanceNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceNamespaceIamPolicyArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asInput<String>(map['location']),
      namespaceId: Input.asInput<String>(map['namespaceId']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
