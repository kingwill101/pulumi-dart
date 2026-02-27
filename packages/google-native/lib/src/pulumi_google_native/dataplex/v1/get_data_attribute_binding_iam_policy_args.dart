// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataAttributeBindingIamPolicy.
class GetDataAttributeBindingIamPolicyArgs {
  final Input<String> dataAttributeBindingId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetDataAttributeBindingIamPolicyArgs({
    required this.dataAttributeBindingId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataAttributeBindingId'] = dataAttributeBindingId;
    map['location'] = location;
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

  factory GetDataAttributeBindingIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDataAttributeBindingIamPolicyArgs(
      dataAttributeBindingId:
          Input.asInput<String>(map['dataAttributeBindingId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
