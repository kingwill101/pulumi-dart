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
  /// The parameters supplied to the create or update certificate operation.
  final pulumi.Input<String>? certificateName;
  /// Gets or sets the description of the certificate.
  final pulumi.Input<String>? description;
  /// Gets or sets the is exportable flag of the certificate.
  final pulumi.Input<bool>? isExportable;
  /// Gets or sets the name of the certificate.
  final pulumi.Input<String> name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the thumbprint of the certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CertificateArgs].
  /// [automationAccountName] The name of the automation account.
  /// [base64Value] Gets or sets the base64 encoded value of the certificate.
  /// [certificateName] The parameters supplied to the create or update certificate operation.
  /// [description] Gets or sets the description of the certificate.
  /// [isExportable] Gets or sets the is exportable flag of the certificate.
  /// [name] Gets or sets the name of the certificate.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [thumbprint] Gets or sets the thumbprint of the certificate.
  CertificateArgs({
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
      automationAccountName: (map['automationAccountName'] as String).input(),
      base64Value: (map['base64Value'] as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isExportable: map['isExportable'] == null ? null : (map['isExportable'] as bool).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

