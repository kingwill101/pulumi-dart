// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_integration_account_map_content_callback_url_args_doc}
/// Arguments for listIntegrationAccountMapContentCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_integration_account_map_content_callback_url_args_doc}
class ListIntegrationAccountMapContentCallbackUrlArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The key type.
  final pulumi.Input<String>? keyType;
  /// The integration account map name.
  final pulumi.Input<String> mapName;
  /// The expiry time.
  final pulumi.Input<String>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationAccountMapContentCallbackUrlArgs].
  /// [integrationAccountName] The integration account name.
  /// [keyType] The key type.
  /// [mapName] The integration account map name.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  ListIntegrationAccountMapContentCallbackUrlArgs({
    required String integrationAccountName,
    String? keyType,
    required String mapName,
    String? notAfter,
    required String resourceGroupName,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      mapName = pulumi.Input.asInput<String>(mapName),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'keyType': ?keyType,
      'mapName': mapName,
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIntegrationAccountMapContentCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountMapContentCallbackUrlArgs(
      integrationAccountName: map['integrationAccountName'] as String,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
      mapName: map['mapName'] as String,
      notAfter: map['notAfter'] == null ? null : map['notAfter'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

