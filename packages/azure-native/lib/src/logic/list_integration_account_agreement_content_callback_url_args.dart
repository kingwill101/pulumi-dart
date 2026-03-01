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
    required String agreementName,
    required String integrationAccountName,
    String? keyType,
    String? notAfter,
    required String resourceGroupName,
  }) :
      agreementName = pulumi.Input.asInput<String>(agreementName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      agreementName: map['agreementName'] as String,
      integrationAccountName: map['integrationAccountName'] as String,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
      notAfter: map['notAfter'] == null ? null : map['notAfter'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

