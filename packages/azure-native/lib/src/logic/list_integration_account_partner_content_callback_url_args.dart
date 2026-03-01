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
  ListIntegrationAccountPartnerContentCallbackUrlArgs({
    required String integrationAccountName,
    String? keyType,
    String? notAfter,
    required String partnerName,
    required String resourceGroupName,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      partnerName = pulumi.Input.asInput<String>(partnerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      integrationAccountName: map['integrationAccountName'] as String,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
      notAfter: map['notAfter'] == null ? null : map['notAfter'] as String,
      partnerName: map['partnerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

