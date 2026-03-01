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
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> base64Value,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isExportable,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? thumbprint,
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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      base64Value: pulumi.Output.create<String>(map['base64Value'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isExportable: map['isExportable'] == null ? null : pulumi.Output.create<bool>(map['isExportable'] as bool),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

