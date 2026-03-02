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
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCertificateArgs].
  /// [automationAccountName] The name of the automation account.
  /// [certificateName] The name of certificate.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetCertificateArgs({
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
      automationAccountName: (map['automationAccountName'] as String).input(),
      certificateName: (map['certificateName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

