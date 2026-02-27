// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceConnectionPolicyIamPolicy.
class GetServiceConnectionPolicyIamPolicyArgs {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> serviceConnectionPolicyId;

  GetServiceConnectionPolicyIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceConnectionPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceConnectionPolicyId'] = serviceConnectionPolicyId;
    return map;
  }

  factory GetServiceConnectionPolicyIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceConnectionPolicyIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceConnectionPolicyId:
          Input.asInput<String>(map['serviceConnectionPolicyId']),
    );
  }
}
