// ignore_for_file: unused_element, unnecessary_cast


class CaCertificateRegistrationConfig {
  /// The ARN of the role.
  final String? roleArn;
  /// The template body.
  final String? templateBody;
  /// The name of the provisioning template.
  final String? templateName;

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
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      templateBody: map['templateBody'] == null ? null : map['templateBody'] as String,
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
    );
  }
}

