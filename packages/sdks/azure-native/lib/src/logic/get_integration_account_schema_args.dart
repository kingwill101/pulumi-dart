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
  GetIntegrationAccountSchemaArgs({
    required pulumi.Output<String> integrationAccountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
    };
  }

  factory GetIntegrationAccountSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountSchemaArgs(
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
    );
  }
}

