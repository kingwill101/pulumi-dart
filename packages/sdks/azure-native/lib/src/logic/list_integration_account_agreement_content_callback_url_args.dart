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
  final pulumi.Input<String>? keyType;
  /// The expiry time.
  final pulumi.Input<String>? notAfter;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIntegrationAccountAgreementContentCallbackUrlArgs].
  /// [agreementName] The integration account agreement name.
  /// [integrationAccountName] The integration account name.
  /// [keyType] The key type.
  /// [notAfter] The expiry time.
  /// [resourceGroupName] The resource group name.
  ListIntegrationAccountAgreementContentCallbackUrlArgs({
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
      agreementName: (map['agreementName'] as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      keyType: map['keyType'] == null ? null : (map['keyType']! as String).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

