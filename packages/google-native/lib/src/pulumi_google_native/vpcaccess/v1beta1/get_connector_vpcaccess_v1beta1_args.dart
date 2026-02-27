// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnector.
class GetConnectorVpcaccessV1beta1Args {
  final pulumi.Input<String> connectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConnectorVpcaccessV1beta1Args({
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

  factory GetConnectorVpcaccessV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectorVpcaccessV1beta1Args(
      connectorId: pulumi.Input.asInput<String>(map['connectorId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
