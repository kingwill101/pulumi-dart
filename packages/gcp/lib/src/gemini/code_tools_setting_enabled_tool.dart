// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_tools_setting_enabled_tool_config.dart';

class CodeToolsSettingEnabledTool {
  /// Link to the Dev Connect Account Connector that holds the user credentials.
  /// projects/{project}/locations/{location}/accountConnectors/{account_connector_id}
  final String? accountConnector;

  /// Configuration parameters for the tool.
  /// Structure is documented below.
  final List<CodeToolsSettingEnabledToolConfig>? configs;

  /// Handle used to invoke the tool.
  final String handle;

  /// Link to the Tool
  final String tool;

  /// Overridden URI, if allowed by Tool.
  final String? uriOverride;

  /// Creates a new [CodeToolsSettingEnabledTool].
  /// [accountConnector] Link to the Dev Connect Account Connector that holds the user credentials.
  /// [configs] Configuration parameters for the tool.
  /// [handle] Handle used to invoke the tool.
  /// [tool] Link to the Tool
  /// [uriOverride] Overridden URI, if allowed by Tool.
  CodeToolsSettingEnabledTool({
    this.accountConnector,
    this.configs,
    required this.handle,
    required this.tool,
    this.uriOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountConnectorValue = accountConnector;
    if (accountConnectorValue != null) {
      map['accountConnector'] = accountConnectorValue;
    }
    final configsValue = configs;
    if (configsValue != null) {
      map['configs'] = pulumi.Input.encodeList<
          CodeToolsSettingEnabledToolConfig,
          Map<String, dynamic>>(configsValue, (value) => value.toMap());
    }
    map['handle'] = handle;
    map['tool'] = tool;
    final uriOverrideValue = uriOverride;
    if (uriOverrideValue != null) {
      map['uriOverride'] = uriOverrideValue;
    }
    return map;
  }

  factory CodeToolsSettingEnabledTool.fromMap(Map<String, dynamic> map) {
    return CodeToolsSettingEnabledTool(
      accountConnector: map['accountConnector'] == null
          ? null
          : map['accountConnector'] as String,
      configs: map['configs'] == null
          ? null
          : pulumi.Input.decodeList<CodeToolsSettingEnabledToolConfig>(
              map['configs'],
              (value) => CodeToolsSettingEnabledToolConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      handle: map['handle'] as String,
      tool: map['tool'] as String,
      uriOverride:
          map['uriOverride'] == null ? null : map['uriOverride'] as String,
    );
  }
}
