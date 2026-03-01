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
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> certificateName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      certificateName = pulumi.Input.asInput<String>(certificateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'certificateName': certificateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      certificateName: pulumi.Output.create<String>(map['certificateName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

