// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDomainSettingsTrustedIdentityPropagationSettings {
  /// Whether to enable Trusted Identity Propagation (TIP) for the domain. Valid values are `ENABLED` and `DISABLED`. When enabled, user identities from IAM Identity Center are propagated through the domain to TIP enabled AWS services. Can only be `ENABLED` when `auth_mode` is `SSO`.
  final pulumi.Input<String> status;

  /// Creates a new [DomainDomainSettingsTrustedIdentityPropagationSettings].
  /// [status] Whether to enable Trusted Identity Propagation (TIP) for the domain. Valid values are `ENABLED` and `DISABLED`. When enabled, user identities from IAM Identity Center are propagated through the domain to TIP enabled AWS services. Can only be `ENABLED` when `auth_mode` is `SSO`.
  DomainDomainSettingsTrustedIdentityPropagationSettings({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory DomainDomainSettingsTrustedIdentityPropagationSettings.fromMap(Map<String, dynamic> map) {
    return DomainDomainSettingsTrustedIdentityPropagationSettings(
      status: (map['status'] as String).input(),
    );
  }
}

