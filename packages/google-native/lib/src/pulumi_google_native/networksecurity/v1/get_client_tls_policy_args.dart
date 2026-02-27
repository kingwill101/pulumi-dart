// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getClientTlsPolicy.
class GetClientTlsPolicyArgs {
  final Input<String> clientTlsPolicyId;
  final Input<String> location;
  final Input<String>? project;

  GetClientTlsPolicyArgs({
    required this.clientTlsPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientTlsPolicyId'] = clientTlsPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetClientTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetClientTlsPolicyArgs(
      clientTlsPolicyId: Input.asInput<String>(map['clientTlsPolicyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
