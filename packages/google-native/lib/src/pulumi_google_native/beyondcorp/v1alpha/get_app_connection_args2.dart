// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppConnection.
class GetAppConnectionArgs2 {
  final Input<String> appConnectionId;
  final Input<String> location;
  final Input<String>? project;

  GetAppConnectionArgs2({
    required this.appConnectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appConnectionId'] = appConnectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppConnectionArgs2.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionArgs2(
      appConnectionId: Input.asInput<String>(map['appConnectionId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
