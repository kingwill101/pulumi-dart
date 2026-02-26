// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceBindingIamPolicy.
class GetServiceBindingIamPolicyArgs2 {
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> serviceBindingId;

  GetServiceBindingIamPolicyArgs2({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceBindingId,
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
    map['serviceBindingId'] = serviceBindingId;
    return map;
  }

  factory GetServiceBindingIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetServiceBindingIamPolicyArgs2(
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceBindingId: Input.asInput<String>(map['serviceBindingId']),
    );
  }
}
