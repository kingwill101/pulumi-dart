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
    required pulumi.Output<String> integrationAccountName,
    pulumi.Output<String>? keyType,
    pulumi.Output<String>? notAfter,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName);

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
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      keyType: map['keyType'] == null ? null : pulumi.Output.create<String>(map['keyType'] as String),
      notAfter: map['notAfter'] == null ? null : pulumi.Output.create<String>(map['notAfter'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
    );
  }
}

