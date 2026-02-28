// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_datacenter_connector_vmmigration_v1alpha1_args_doc}
/// Arguments for getDatacenterConnector.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_datacenter_connector_vmmigration_v1alpha1_args_doc}
class GetDatacenterConnectorVmmigrationV1alpha1Args {
  final pulumi.Input<String> datacenterConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetDatacenterConnectorVmmigrationV1alpha1Args].
  /// [datacenterConnectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetDatacenterConnectorVmmigrationV1alpha1Args({
    required String datacenterConnectorId,
    required String location,
    String? project,
    required String sourceId,
  })  : datacenterConnectorId =
            pulumi.Input.asInput<String>(datacenterConnectorId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        sourceId = pulumi.Input.asInput<String>(sourceId);

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

  factory GetDatacenterConnectorVmmigrationV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDatacenterConnectorVmmigrationV1alpha1Args(
      datacenterConnectorId: map['datacenterConnectorId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}
