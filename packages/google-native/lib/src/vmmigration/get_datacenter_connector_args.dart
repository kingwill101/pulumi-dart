// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_datacenter_connector_args_doc}
/// Arguments for getDatacenterConnector.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_datacenter_connector_args_doc}
class GetDatacenterConnectorArgs {
  final pulumi.Input<String> datacenterConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetDatacenterConnectorArgs].
  /// [datacenterConnectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetDatacenterConnectorArgs({
    required String datacenterConnectorId,
    required String location,
    String? project,
    required String sourceId,
  }) :
      datacenterConnectorId = pulumi.Input.asInput<String>(datacenterConnectorId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacenterConnectorId': datacenterConnectorId,
      'location': location,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetDatacenterConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDatacenterConnectorArgs(
      datacenterConnectorId: map['datacenterConnectorId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}

