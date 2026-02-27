// ignore_for_file: unused_element, unnecessary_cast

import '../domain_advanced_security_options_master_user_options/domain_advanced_security_options_master_user_options_opensearch.dart';

class DomainAdvancedSecurityOptionsOpensearch {
  /// Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless `advanced_security_options` are enabled. _Can only be enabled on an existing domain._
  final bool? anonymousAuthEnabled;

  /// Whether advanced security is enabled.
  final bool enabled;

  /// Whether the internal user database is enabled. Default is `false`.
  final bool? internalUserDatabaseEnabled;

  /// Configuration block for the main user. Detailed below.
  final DomainAdvancedSecurityOptionsMasterUserOptionsOpensearch?
      masterUserOptions;

  DomainAdvancedSecurityOptionsOpensearch({
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

  factory DomainAdvancedSecurityOptionsOpensearch.fromMap(
      Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptionsOpensearch(
      anonymousAuthEnabled: map['anonymousAuthEnabled'] == null
          ? null
          : map['anonymousAuthEnabled'] as bool,
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] == null
          ? null
          : map['internalUserDatabaseEnabled'] as bool,
      masterUserOptions: map['masterUserOptions'] == null
          ? null
          : DomainAdvancedSecurityOptionsMasterUserOptionsOpensearch.fromMap(
              (map['masterUserOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
