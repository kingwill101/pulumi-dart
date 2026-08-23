// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_integration_account_schema_content_callback_url_args_doc}
/// Arguments for listIntegrationAccountSchemaContentCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_integration_account_schema_content_callback_url_args_doc}
class ListIntegrationAccountSchemaContentCallbackUrlArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The key type.
  final pulumi.Input<String>? keyType;
  /// The expiry time.
  final pulumi.Input<String>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The integration account schema name.
  final pulumi.Input<String> schemaName;

  /// Creates a new [ListIntegrationAccountSchemaContentCallbackUrlArgs].
  /// [integrationAccountName] The integration account name.
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  /// [schemaName] The integration account schema name.
  const ListIntegrationAccountSchemaContentCallbackUrlArgs({
    required this.integrationAccountName,
    this.keyType,
    this.notAfter,
    required this.resourceGroupName,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'keyType': ?keyType,
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
    };
  }

  factory ListIntegrationAccountSchemaContentCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountSchemaContentCallbackUrlArgs(
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
    );
  }
}
