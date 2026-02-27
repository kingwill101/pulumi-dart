// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppConnector.
class GetAppConnectorBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAppConnectorBeyondcorpV1alphaArgs({
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

  factory GetAppConnectorBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAppConnectorBeyondcorpV1alphaArgs(
      appConnectorId: pulumi.Input.asInput<String>(map['appConnectorId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
