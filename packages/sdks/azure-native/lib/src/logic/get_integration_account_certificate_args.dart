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
    required pulumi.Output<String> certificateName,
    required pulumi.Output<String> integrationAccountName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      certificateName = pulumi.Input.asInput<String>(certificateName),
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'integrationAccountName': integrationAccountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIntegrationAccountCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountCertificateArgs(
      certificateName: pulumi.Output.create<String>(map['certificateName'] as String),
      integrationAccountName: pulumi.Output.create<String>(map['integrationAccountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

