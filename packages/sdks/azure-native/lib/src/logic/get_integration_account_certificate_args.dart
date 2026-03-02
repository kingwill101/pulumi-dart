// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logic_get_integration_account_certificate_args_doc}
/// Arguments for getIntegrationAccountCertificate.
/// {@endtemplate}
/// {@macro pulumi_logic_get_integration_account_certificate_args_doc}
class GetIntegrationAccountCertificateArgs {
  /// The integration account certificate name.
  final pulumi.Input<String> certificateName;
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIntegrationAccountCertificateArgs].
  /// [certificateName] The integration account certificate name.
  /// [integrationAccountName] The integration account name.
  /// [resourceGroupName] The resource group name.
  GetIntegrationAccountCertificateArgs({
    required this.certificateName,
    required this.integrationAccountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountCertificateArgs(
      certificateName: (map['certificateName'] as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

