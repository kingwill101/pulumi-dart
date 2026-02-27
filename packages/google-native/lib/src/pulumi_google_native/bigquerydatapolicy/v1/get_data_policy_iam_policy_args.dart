// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataPolicyIamPolicy.
class GetDataPolicyIamPolicyArgs {
  final Input<String> dataPolicyId;
  final Input<String> location;
  final Input<String>? project;

  GetDataPolicyIamPolicyArgs({
    required this.dataPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataPolicyId'] = dataPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataPolicyIamPolicyArgs(
      dataPolicyId: Input.asInput<String>(map['dataPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
