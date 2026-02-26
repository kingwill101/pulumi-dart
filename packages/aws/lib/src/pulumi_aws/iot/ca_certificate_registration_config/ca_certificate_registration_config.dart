// ignore_for_file: unused_element, unnecessary_cast

class CaCertificateRegistrationConfig {
  /// The ARN of the role.
  final String? roleArn;

  /// The template body.
  final String? templateBody;

  /// The name of the provisioning template.
  final String? templateName;

  CaCertificateRegistrationConfig({
    this.roleArn,
    this.templateBody,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final templateBodyValue = templateBody;
    if (templateBodyValue != null) {
      map['templateBody'] = templateBodyValue;
    }
    final templateNameValue = templateName;
    if (templateNameValue != null) {
      map['templateName'] = templateNameValue;
    }
    return map;
  }

  factory CaCertificateRegistrationConfig.fromMap(Map<String, dynamic> map) {
    return CaCertificateRegistrationConfig(
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      templateBody:
          map['templateBody'] == null ? null : map['templateBody'] as String,
      templateName:
          map['templateName'] == null ? null : map['templateName'] as String,
    );
  }
}
