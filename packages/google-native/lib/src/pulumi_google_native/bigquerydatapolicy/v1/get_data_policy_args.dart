// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataPolicy.
class GetDataPolicyArgs {
  final pulumi.Input<String> dataPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDataPolicyArgs({
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

  factory GetDataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataPolicyArgs(
      dataPolicyId: pulumi.Input.asInput<String>(map['dataPolicyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
