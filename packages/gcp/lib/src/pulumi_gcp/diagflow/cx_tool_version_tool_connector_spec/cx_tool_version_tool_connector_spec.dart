// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_tool_version_tool_connector_spec_action/cx_tool_version_tool_connector_spec_action.dart';
import '../cx_tool_version_tool_connector_spec_end_user_auth_config/cx_tool_version_tool_connector_spec_end_user_auth_config.dart';

class CxToolVersionToolConnectorSpec {
  /// Actions for the tool to use.
  /// Structure is documented below.
  final List<CxToolVersionToolConnectorSpecAction> actions;

  /// Integration Connectors end-user authentication configuration.
  /// If configured, the end-user authentication fields will be passed in the Integration Connectors API request
  /// and override the admin, default authentication configured for the Connection.
  /// Note: The Connection must have authentication override enabled in order to specify an EUC configuration here - otherwise,
  /// the ConnectorTool creation will fail.
  /// See: https://cloud.google.com/application-integration/docs/configure-connectors-task#configure-authentication-override        properties:
  /// Structure is documented below.
  final CxToolVersionToolConnectorSpecEndUserAuthConfig? endUserAuthConfig;

  /// The full resource name of the referenced Integration Connectors Connection.
  /// Format: projects/*/locations/*/connections/*
  final String name;

  CxToolVersionToolConnectorSpec({
    required this.actions,
    this.endUserAuthConfig,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = Input.encodeList<CxToolVersionToolConnectorSpecAction,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    final endUserAuthConfigValue = endUserAuthConfig;
    if (endUserAuthConfigValue != null) {
      map['endUserAuthConfig'] = endUserAuthConfigValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory CxToolVersionToolConnectorSpec.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolConnectorSpec(
      actions: Input.decodeList<CxToolVersionToolConnectorSpecAction>(
          map['actions'],
          (value) => CxToolVersionToolConnectorSpecAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      endUserAuthConfig: map['endUserAuthConfig'] == null
          ? null
          : CxToolVersionToolConnectorSpecEndUserAuthConfig.fromMap(
              (map['endUserAuthConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
