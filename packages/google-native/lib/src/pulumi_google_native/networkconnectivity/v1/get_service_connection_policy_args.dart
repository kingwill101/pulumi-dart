// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceConnectionPolicy.
class GetServiceConnectionPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionPolicyId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceConnectionPolicyId:
          pulumi.Input.asInput<String>(map['serviceConnectionPolicyId']),
    );
  }
}
