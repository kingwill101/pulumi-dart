// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_azure_advanced_thread_protection_data_connector_azure_advanced_thread_protection_args_doc}
/// The set of arguments for DataConnectorAzureAdvancedThreadProtection.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_azure_advanced_thread_protection_data_connector_azure_advanced_thread_protection_args_doc}
class DataConnectorAzureAdvancedThreadProtectionArgs {
  /// The ID of the Log Analytics Workspace that this Azure Advanced Threat Protection Data Connector resides in. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Azure Advanced Threat Protection Data Connector. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the tenant that this Azure Advanced Threat Protection Data Connector connects to. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  ///
  /// > **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorAzureAdvancedThreadProtectionArgs].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Azure Advanced Threat Protection Data Connector resides in. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  /// [name] The name which should be used for this Azure Advanced Threat Protection Data Connector. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Azure Advanced Threat Protection Data Connector connects to. Changing this forces a new Azure Advanced Threat Protection Data Connector to be created.
  DataConnectorAzureAdvancedThreadProtectionArgs({
    required String logAnalyticsWorkspaceId,
    String? name,
    String? tenantId,
  }) :
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorAzureAdvancedThreadProtectionArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorAzureAdvancedThreadProtectionArgs(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

