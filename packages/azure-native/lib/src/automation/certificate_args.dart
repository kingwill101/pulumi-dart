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
    required String automationAccountName,
    required String base64Value,
    String? certificateName,
    String? description,
    bool? isExportable,
    required String name,
    required String resourceGroupName,
    String? thumbprint,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      base64Value = pulumi.Input.asInput<String>(base64Value),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      isExportable = pulumi.Input.asOptionalInput<bool>(isExportable),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

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
      automationAccountName: map['automationAccountName'] as String,
      base64Value: map['base64Value'] as String,
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      isExportable: map['isExportable'] == null ? null : map['isExportable'] as bool,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

