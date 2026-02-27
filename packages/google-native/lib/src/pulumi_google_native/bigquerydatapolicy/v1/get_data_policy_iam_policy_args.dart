// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataPolicyIamPolicy.
class GetDataPolicyIamPolicyArgs {
  final pulumi.Input<String> dataPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      dataPolicyId: pulumi.Input.asInput<String>(map['dataPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
