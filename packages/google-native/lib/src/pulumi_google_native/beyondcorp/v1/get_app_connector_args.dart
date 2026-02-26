// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppConnector.
class GetAppConnectorArgs {
  final Input<String> appConnectorId;
  final Input<String> location;
  final Input<String>? project;

  GetAppConnectorArgs({
    required this.appConnectorId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appConnectorId'] = appConnectorId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorArgs(
      appConnectorId: Input.asInput<String>(map['appConnectorId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
