// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServerTlsPolicy.
class GetServerTlsPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serverTlsPolicyId;

  GetServerTlsPolicyArgs({
    required this.location,
    this.project,
    required this.serverTlsPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serverTlsPolicyId'] = serverTlsPolicyId;
    return map;
  }

  factory GetServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerTlsPolicyArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serverTlsPolicyId: pulumi.Input.asInput<String>(map['serverTlsPolicyId']),
    );
  }
}
