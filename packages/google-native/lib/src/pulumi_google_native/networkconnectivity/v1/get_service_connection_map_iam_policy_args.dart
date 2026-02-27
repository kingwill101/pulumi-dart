// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceConnectionMapIamPolicy.
class GetServiceConnectionMapIamPolicyArgs {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> serviceConnectionMapId;

  GetServiceConnectionMapIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceConnectionMapId,
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
    map['serviceConnectionMapId'] = serviceConnectionMapId;
    return map;
  }

  factory GetServiceConnectionMapIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceConnectionMapIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceConnectionMapId:
          Input.asInput<String>(map['serviceConnectionMapId']),
    );
  }
}
