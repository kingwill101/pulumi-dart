// ignore_for_file: unused_element, unnecessary_cast

class GetDomainAdvancedSecurityOption2 {
  final bool anonymousAuthEnabled;

  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// Whether the internal user database is enabled.
  final bool internalUserDatabaseEnabled;

  GetDomainAdvancedSecurityOption2({
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

  factory GetDomainAdvancedSecurityOption2.fromMap(Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOption2(
      anonymousAuthEnabled: map['anonymousAuthEnabled'] as bool,
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] as bool,
    );
  }
}
