// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConnectionIamPolicy.
class GetConnectionIamPolicyArgs2 {
  final Input<String> connectionId;
  final Input<String> location;
  final Input<String>? project;

  GetConnectionIamPolicyArgs2({
    required this.connectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConnectionIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetConnectionIamPolicyArgs2(
      connectionId: Input.asInput<String>(map['connectionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
