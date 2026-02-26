// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPrivateConnection.
class GetPrivateConnectionArgs {
  final Input<String> location;
  final Input<String> privateConnectionId;
  final Input<String>? project;

  GetPrivateConnectionArgs({
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

  factory GetPrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionArgs(
      location: Input.asInput<String>(map['location']),
      privateConnectionId: Input.asInput<String>(map['privateConnectionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
