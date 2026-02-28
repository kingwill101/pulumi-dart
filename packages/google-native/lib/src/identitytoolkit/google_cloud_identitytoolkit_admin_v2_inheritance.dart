// ignore_for_file: unused_element, unnecessary_cast


/// Settings that the tenants will inherit from project level.
class GoogleCloudIdentitytoolkitAdminV2Inheritance {
  /// Whether to allow the tenant to inherit custom domains, email templates, and custom SMTP settings. If true, email sent from tenant will follow the project level email sending configurations. If false (by default), emails will go with the default settings with no customizations.
  final bool? emailSendingConfig;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2Inheritance].
  /// [emailSendingConfig] Whether to allow the tenant to inherit custom domains, email templates, and custom SMTP settings. If true, email sent from tenant will follow the project level email sending configurations. If false (by default), emails will go with the default settings with no customizations.
  GoogleCloudIdentitytoolkitAdminV2Inheritance({
    this.emailSendingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailSendingConfig': ?emailSendingConfig,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2Inheritance.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2Inheritance(
      emailSendingConfig: map['emailSendingConfig'] == null ? null : map['emailSendingConfig'] as bool,
    );
  }
}

