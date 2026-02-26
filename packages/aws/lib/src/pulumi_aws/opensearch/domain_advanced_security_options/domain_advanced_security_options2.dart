// ignore_for_file: unused_element, unnecessary_cast

import '../domain_advanced_security_options_master_user_options/domain_advanced_security_options_master_user_options2.dart';

class DomainAdvancedSecurityOptions2 {
  /// Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless <span pulumi-lang-nodejs="`advancedSecurityOptions`" pulumi-lang-dotnet="`AdvancedSecurityOptions`" pulumi-lang-go="`advancedSecurityOptions`" pulumi-lang-python="`advanced_security_options`" pulumi-lang-yaml="`advancedSecurityOptions`" pulumi-lang-java="`advancedSecurityOptions`">`advanced_security_options`</span> are enabled. _Can only be enabled on an existing domain._
  final bool? anonymousAuthEnabled;

  /// Whether advanced security is enabled.
  final bool enabled;

  /// Whether the internal user database is enabled. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? internalUserDatabaseEnabled;

  /// Configuration block for the main user. Detailed below.
  final DomainAdvancedSecurityOptionsMasterUserOptions2? masterUserOptions;

  DomainAdvancedSecurityOptions2({
    this.anonymousAuthEnabled,
    required this.enabled,
    this.internalUserDatabaseEnabled,
    this.masterUserOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final anonymousAuthEnabledValue = anonymousAuthEnabled;
    if (anonymousAuthEnabledValue != null) {
      map['anonymousAuthEnabled'] = anonymousAuthEnabledValue;
    }
    map['enabled'] = enabled;
    final internalUserDatabaseEnabledValue = internalUserDatabaseEnabled;
    if (internalUserDatabaseEnabledValue != null) {
      map['internalUserDatabaseEnabled'] = internalUserDatabaseEnabledValue;
    }
    final masterUserOptionsValue = masterUserOptions;
    if (masterUserOptionsValue != null) {
      map['masterUserOptions'] = masterUserOptionsValue.toMap();
    }
    return map;
  }

  factory DomainAdvancedSecurityOptions2.fromMap(Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptions2(
      anonymousAuthEnabled: map['anonymousAuthEnabled'] == null
          ? null
          : map['anonymousAuthEnabled'] as bool,
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] == null
          ? null
          : map['internalUserDatabaseEnabled'] as bool,
      masterUserOptions: map['masterUserOptions'] == null
          ? null
          : DomainAdvancedSecurityOptionsMasterUserOptions2.fromMap(
              (map['masterUserOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
