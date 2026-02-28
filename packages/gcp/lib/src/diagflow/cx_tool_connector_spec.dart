// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_connector_spec_action.dart';
import 'cx_tool_connector_spec_end_user_auth_config.dart';

class CxToolConnectorSpec {
  /// Actions for the tool to use.
  /// Structure is documented below.
  final List<CxToolConnectorSpecAction> actions;

  /// Integration Connectors end-user authentication configuration.
  /// If configured, the end-user authentication fields will be passed in the Integration Connectors API request
  /// and override the admin, default authentication configured for the Connection.
  /// Note: The Connection must have authentication override enabled in order to specify an EUC configuration here - otherwise,
  /// the ConnectorTool creation will fail.
  /// See: https://cloud.google.com/application-integration/docs/configure-connectors-task#configure-authentication-override        properties:
  /// Structure is documented below.
  final CxToolConnectorSpecEndUserAuthConfig? endUserAuthConfig;

  /// The full resource name of the referenced Integration Connectors Connection.
  /// Format: projects/*/locations/*/connections/*
  final String name;

  /// Creates a new [CxToolConnectorSpec].
  /// [actions] Actions for the tool to use.
  /// [endUserAuthConfig] Integration Connectors end-user authentication configuration.
  /// [name] The full resource name of the referenced Integration Connectors Connection.
  CxToolConnectorSpec({
    required this.actions,
    this.endUserAuthConfig,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = pulumi.Input.encodeList<CxToolConnectorSpecAction,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    final endUserAuthConfigValue = endUserAuthConfig;
    if (endUserAuthConfigValue != null) {
      map['endUserAuthConfig'] = endUserAuthConfigValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory CxToolConnectorSpec.fromMap(Map<String, dynamic> map) {
    return CxToolConnectorSpec(
      actions: pulumi.Input.decodeList<CxToolConnectorSpecAction>(
          map['actions'],
          (value) => CxToolConnectorSpecAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      endUserAuthConfig: map['endUserAuthConfig'] == null
          ? null
          : CxToolConnectorSpecEndUserAuthConfig.fromMap(
              (map['endUserAuthConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
