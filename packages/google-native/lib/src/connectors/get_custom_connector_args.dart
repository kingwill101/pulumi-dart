// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_custom_connector_args_doc}
/// Arguments for getCustomConnector.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_custom_connector_args_doc}
class GetCustomConnectorArgs {
  final pulumi.Input<String> customConnectorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomConnectorArgs].
  /// [customConnectorId] Required.
  /// [project] Optional.
  GetCustomConnectorArgs({
    required String customConnectorId,
    String? project,
  })  : customConnectorId = pulumi.Input.asInput<String>(customConnectorId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConnectorId'] = customConnectorId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCustomConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorArgs(
      customConnectorId: map['customConnectorId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
