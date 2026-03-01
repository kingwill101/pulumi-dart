// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_microsoft_cloud_app_security_data_connector_microsoft_cloud_app_security_args_doc}
/// The set of arguments for DataConnectorMicrosoftCloudAppSecurity.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_microsoft_cloud_app_security_data_connector_microsoft_cloud_app_security_args_doc}
class DataConnectorMicrosoftCloudAppSecurityArgs {
  /// Should the alerts be enabled? Defaults to `true`.
  final pulumi.Input<bool>? alertsEnabled;
  /// Should the Discovery Logs be enabled? Defaults to `true`.
  ///
  /// > **Note:** One of either `alerts_enabled` or `discovery_logs_enabled` has to be specified.
  final pulumi.Input<bool>? discoveryLogsEnabled;
  /// The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to.
  ///
  /// > **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorMicrosoftCloudAppSecurityArgs].
  /// [alertsEnabled] Should the alerts be enabled? Defaults to `true`.
  /// [discoveryLogsEnabled] Should the Discovery Logs be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  /// [name] The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  /// [tenantId] The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to.
  DataConnectorMicrosoftCloudAppSecurityArgs({
    bool? alertsEnabled,
    bool? discoveryLogsEnabled,
    required String logAnalyticsWorkspaceId,
    String? name,
    String? tenantId,
  }) :
      alertsEnabled = pulumi.Input.asOptionalInput<bool>(alertsEnabled),
      discoveryLogsEnabled = pulumi.Input.asOptionalInput<bool>(discoveryLogsEnabled),
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsEnabled': ?alertsEnabled,
      'discoveryLogsEnabled': ?discoveryLogsEnabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorMicrosoftCloudAppSecurityArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorMicrosoftCloudAppSecurityArgs(
      alertsEnabled: map['alertsEnabled'] == null ? null : map['alertsEnabled'] as bool,
      discoveryLogsEnabled: map['discoveryLogsEnabled'] == null ? null : map['discoveryLogsEnabled'] as bool,
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

