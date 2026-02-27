// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataPolicy.
class GetDataPolicyArgs {
  final Input<String> dataPolicyId;
  final Input<String> location;
  final Input<String>? project;

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
      dataPolicyId: Input.asInput<String>(map['dataPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
