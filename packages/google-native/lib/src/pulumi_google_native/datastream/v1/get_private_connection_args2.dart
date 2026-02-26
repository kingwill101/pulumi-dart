// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPrivateConnection.
class GetPrivateConnectionArgs2 {
  final Input<String> location;
  final Input<String> privateConnectionId;
  final Input<String>? project;

  GetPrivateConnectionArgs2({
    required this.location,
    required this.privateConnectionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPrivateConnectionArgs2.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionArgs2(
      location: Input.asInput<String>(map['location']),
      privateConnectionId: Input.asInput<String>(map['privateConnectionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
