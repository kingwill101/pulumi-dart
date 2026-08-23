// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_schema_args_doc}
/// Arguments for getIntegrationAccountSchema.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_schema_args_doc}
class GetIntegrationAccountSchemaArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The integration account schema name.
  final pulumi.Input<String> schemaName;

  /// Creates a new [GetIntegrationAccountSchemaArgs].
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  /// [schemaName] The integration account schema name.
  const GetIntegrationAccountSchemaArgs({
    required this.integrationAccountName,
    required this.resourceGroupName,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
    };
  }

  factory GetIntegrationAccountSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountSchemaArgs(
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
    );
  }
}
