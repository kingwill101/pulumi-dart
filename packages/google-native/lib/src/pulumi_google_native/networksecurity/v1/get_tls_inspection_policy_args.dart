// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTlsInspectionPolicy.
class GetTlsInspectionPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tlsInspectionPolicyId;

  GetTlsInspectionPolicyArgs({
    required this.location,
    this.project,
    required this.tlsInspectionPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tlsInspectionPolicyId'] = tlsInspectionPolicyId;
    return map;
  }

  factory GetTlsInspectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsInspectionPolicyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tlsInspectionPolicyId:
          Input.asInput<String>(map['tlsInspectionPolicyId']),
    );
  }
}
