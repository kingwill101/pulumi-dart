// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatacenterConnector.
class GetDatacenterConnectorArgs {
  final pulumi.Input<String> datacenterConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  GetDatacenterConnectorArgs({
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

  factory GetDatacenterConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDatacenterConnectorArgs(
      datacenterConnectorId:
          pulumi.Input.asInput<String>(map['datacenterConnectorId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
    );
  }
}
