// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_app_connector_args_doc}
/// Arguments for getAppConnector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_app_connector_args_doc}
class GetAppConnectorArgs {
  final pulumi.Input<String> appConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectorArgs].
  /// [appConnectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppConnectorArgs({
    required String appConnectorId,
    required String location,
    String? project,
  })  : appConnectorId = pulumi.Input.asInput<String>(appConnectorId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      appConnectorId: map['appConnectorId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
