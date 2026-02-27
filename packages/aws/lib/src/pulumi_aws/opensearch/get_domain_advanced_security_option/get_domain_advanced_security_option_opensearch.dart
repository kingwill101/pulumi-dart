// ignore_for_file: unused_element, unnecessary_cast

class GetDomainAdvancedSecurityOptionOpensearch {
  final bool anonymousAuthEnabled;

  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// Whether the internal user database is enabled.
  final bool internalUserDatabaseEnabled;

  GetDomainAdvancedSecurityOptionOpensearch({
    required this.anonymousAuthEnabled,
    required this.enabled,
    required this.internalUserDatabaseEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['anonymousAuthEnabled'] = anonymousAuthEnabled;
    map['enabled'] = enabled;
    map['internalUserDatabaseEnabled'] = internalUserDatabaseEnabled;
    return map;
  }

  factory GetDomainAdvancedSecurityOptionOpensearch.fromMap(
      Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOptionOpensearch(
      anonymousAuthEnabled: map['anonymousAuthEnabled'] as bool,
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] as bool,
    );
  }
}
