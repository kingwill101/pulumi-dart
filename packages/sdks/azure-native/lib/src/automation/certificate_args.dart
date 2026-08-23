// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_automation_certificate_args_doc}
class CertificateArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the base64 encoded value of the certificate.
  final pulumi.Input<String> base64Value;
  /// The name of certificate.
  final pulumi.Input<String>? certificateName;
  /// Gets or sets the description of the certificate.
  final pulumi.Input<String>? description;
  /// Gets or sets the is exportable flag of the certificate.
  final pulumi.Input<bool>? isExportable;
  /// Gets or sets the name of the certificate.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the thumbprint of the certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CertificateArgs].
  /// [automationAccountName] The name of the automation account.
  /// [base64Value] Gets or sets the base64 encoded value of the certificate.
  /// [certificateName] The name of certificate.
  /// [description] Gets or sets the description of the certificate.
  /// [isExportable] Gets or sets the is exportable flag of the certificate.
  /// [name] Gets or sets the name of the certificate.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [thumbprint] Gets or sets the thumbprint of the certificate.
  const CertificateArgs({
    required this.automationAccountName,
    required this.base64Value,
    this.certificateName,
    this.description,
    this.isExportable,
    required this.name,
    required this.resourceGroupName,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'base64Value': base64Value,
      'certificateName': ?certificateName,
      'description': ?description,
      'isExportable': ?isExportable,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'thumbprint': ?thumbprint,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      base64Value: pulumi.Input.fromValue(map['base64Value'] as String),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isExportable: (() { final guardedValue = map['isExportable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
