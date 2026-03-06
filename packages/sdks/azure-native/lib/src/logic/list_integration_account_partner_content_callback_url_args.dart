// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_integration_account_partner_content_callback_url_args_doc}
/// Arguments for listIntegrationAccountPartnerContentCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_integration_account_partner_content_callback_url_args_doc}
class ListIntegrationAccountPartnerContentCallbackUrlArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The key type.
  final pulumi.Input<String>? keyType;
  /// The expiry time.
  final pulumi.Input<String>? notAfter;
  /// The integration account partner name.
  final pulumi.Input<String> partnerName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationAccountPartnerContentCallbackUrlArgs].
  /// [integrationAccountName] The integration account name.
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [partnerName] The integration account partner name.
  /// [resourceGroupName] The resource group name.
  const ListIntegrationAccountPartnerContentCallbackUrlArgs({
    required this.integrationAccountName,
    this.keyType,
    this.notAfter,
    required this.partnerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'keyType': ?keyType,
      'notAfter': ?notAfter,
      'partnerName': partnerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIntegrationAccountPartnerContentCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountPartnerContentCallbackUrlArgs(
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerName: pulumi.Input.fromValue(map['partnerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

