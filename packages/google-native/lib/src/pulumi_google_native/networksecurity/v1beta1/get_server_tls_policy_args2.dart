// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServerTlsPolicy.
class GetServerTlsPolicyArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> serverTlsPolicyId;

  GetServerTlsPolicyArgs2({
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

  factory GetServerTlsPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetServerTlsPolicyArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serverTlsPolicyId: Input.asInput<String>(map['serverTlsPolicyId']),
    );
  }
}
