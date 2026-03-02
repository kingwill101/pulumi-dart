// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaCertificateRegistrationConfig {
  /// The ARN of the role.
  final pulumi.Input<String>? roleArn;
  /// The template body.
  final pulumi.Input<String>? templateBody;
  /// The name of the provisioning template.
  final pulumi.Input<String>? templateName;

  /// Creates a new [CaCertificateRegistrationConfig].
  /// [roleArn] The ARN of the role.
  /// [templateBody] The template body.
  /// [templateName] The name of the provisioning template.
  CaCertificateRegistrationConfig({
    this.roleArn,
    this.templateBody,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': ?roleArn,
      'templateBody': ?templateBody,
      'templateName': ?templateName,
    };
  }

  factory CaCertificateRegistrationConfig.fromMap(Map<String, dynamic> map) {
    return CaCertificateRegistrationConfig(
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      templateBody: map['templateBody'] == null ? null : ((map['templateBody'] as String).input()).input(),
      templateName: map['templateName'] == null ? null : ((map['templateName'] as String).input()).input(),
    );
  }
}

