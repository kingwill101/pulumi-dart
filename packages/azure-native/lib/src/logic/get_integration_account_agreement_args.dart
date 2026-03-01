// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_agreement_args_doc}
/// Arguments for getIntegrationAccountAgreement.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_agreement_args_doc}
class GetIntegrationAccountAgreementArgs {
  /// The integration account agreement name.
  final pulumi.Input<String> agreementName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountAgreementArgs].
  /// [agreementName] The integration account agreement name.
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  GetIntegrationAccountAgreementArgs({
    required String agreementName,
    required String integrationAccountName,
    required String resourceGroupName,
  }) :
      agreementName = pulumi.Input.asInput<String>(agreementName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementName': agreementName,
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountAgreementArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountAgreementArgs(
      agreementName: map['agreementName'] as String,
      integrationAccountName: map['integrationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

