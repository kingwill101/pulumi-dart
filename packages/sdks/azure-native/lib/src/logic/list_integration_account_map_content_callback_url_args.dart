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
  final pulumi.Input<dynamic>? keyType;
  /// The integration account map name.
  final pulumi.Input<String> mapName;
  /// The expiry time.
  final pulumi.Input<String?>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationAccountMapContentCallbackUrlArgs].
  /// [integrationAccountName] The integration account name.
  /// [keyType] The key type.
  /// [mapName] The integration account map name.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  const ListIntegrationAccountMapContentCallbackUrlArgs({
    required this.integrationAccountName,
    this.keyType,
    required this.mapName,
    this.notAfter,
    required this.resourceGroupName,
  });

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
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      mapName: pulumi.Input.fromValue(map['mapName'] as String),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
