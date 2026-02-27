// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConnector.
class GetConnectorArgs2 {
  final Input<String> connectorId;
  final Input<String> location;
  final Input<String>? project;

  GetConnectorArgs2({
    required this.connectorId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectorId'] = connectorId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConnectorArgs2.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs2(
      connectorId: Input.asInput<String>(map['connectorId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
