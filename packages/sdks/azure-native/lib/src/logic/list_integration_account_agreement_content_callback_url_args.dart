// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_list_integration_account_agreement_content_callback_url_args_doc}
/// Arguments for listIntegrationAccountAgreementContentCallbackUrl.
/// {@endtemplate}
/// {@macro pulumi_logic_list_integration_account_agreement_content_callback_url_args_doc}
class ListIntegrationAccountAgreementContentCallbackUrlArgs {
  /// The integration account agreement name.
  final pulumi.Input<String> agreementName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The key type.
  final pulumi.Input<dynamic>? keyType;
  /// The expiry time.
  final pulumi.Input<String?>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationAccountAgreementContentCallbackUrlArgs].
  /// [agreementName] The integration account agreement name.
  /// [integrationAccountName] The integration account name.
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  const ListIntegrationAccountAgreementContentCallbackUrlArgs({
    required this.agreementName,
    required this.integrationAccountName,
    this.keyType,
    this.notAfter,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementName': agreementName,
      'integrationAccountName': integrationAccountName,
      'keyType': ?keyType,
      'notAfter': ?notAfter,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIntegrationAccountAgreementContentCallbackUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountAgreementContentCallbackUrlArgs(
      agreementName: pulumi.Input.fromValue(map['agreementName'] as String),
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
