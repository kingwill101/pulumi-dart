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
  ListIntegrationAccountSchemaContentCallbackUrlArgs({
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
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      keyType: map['keyType'] == null ? null : (map['keyType'] as String).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
    );
  }
}

