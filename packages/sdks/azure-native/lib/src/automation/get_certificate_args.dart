// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_automation_get_certificate_args_doc}
class GetCertificateArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of certificate.
  final pulumi.Input<String> certificateName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCertificateArgs].
  /// [automationAccountName] The name of the automation account.
  /// [certificateName] The name of certificate.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCertificateArgs({
    required this.automationAccountName,
    required this.certificateName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'certificateName': certificateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
