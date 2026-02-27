// ignore_for_file: unused_element, unnecessary_cast

class DomainDomainSettingsTrustedIdentityPropagationSettings {
  /// Whether to enable Trusted Identity Propagation (TIP) for the domain. Valid values are `ENABLED` and `DISABLED`. When enabled, user identities from IAM Identity Center are propagated through the domain to TIP enabled AWS services. Can only be `ENABLED` when `auth_mode` is `SSO`.
  final String status;

  DomainDomainSettingsTrustedIdentityPropagationSettings({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory DomainDomainSettingsTrustedIdentityPropagationSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDomainSettingsTrustedIdentityPropagationSettings(
      status: map['status'] as String,
    );
  }
}
