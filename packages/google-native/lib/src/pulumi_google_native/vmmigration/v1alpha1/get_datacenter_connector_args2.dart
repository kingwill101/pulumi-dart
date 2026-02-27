// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDatacenterConnector.
class GetDatacenterConnectorArgs2 {
  final Input<String> datacenterConnectorId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> sourceId;

  GetDatacenterConnectorArgs2({
    required this.datacenterConnectorId,
    required this.location,
    this.project,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datacenterConnectorId'] = datacenterConnectorId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetDatacenterConnectorArgs2.fromMap(Map<String, dynamic> map) {
    return GetDatacenterConnectorArgs2(
      datacenterConnectorId:
          Input.asInput<String>(map['datacenterConnectorId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
