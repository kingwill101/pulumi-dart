// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpcaccess_v1_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_vpcaccess_v1_get_connector_args_doc}
class GetConnectorArgs {
  final pulumi.Input<String> connectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectorArgs].
  /// [connectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectorArgs({
    required String connectorId,
    required String location,
    String? project,
  })  : connectorId = pulumi.Input.asInput<String>(connectorId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      connectorId: map['connectorId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
