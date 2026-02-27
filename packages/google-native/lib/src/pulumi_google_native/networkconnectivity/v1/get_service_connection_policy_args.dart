// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceConnectionPolicy.
class GetServiceConnectionPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serviceConnectionPolicyId;

  GetServiceConnectionPolicyArgs({
    required this.location,
    this.project,
    required this.serviceConnectionPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceConnectionPolicyId'] = serviceConnectionPolicyId;
    return map;
  }

  factory GetServiceConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionPolicyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceConnectionPolicyId:
          Input.asInput<String>(map['serviceConnectionPolicyId']),
    );
  }
}
