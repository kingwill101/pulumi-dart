// ignore_for_file: unused_element, unnecessary_cast


class GetDomainAdvancedSecurityOption {
  final bool anonymousAuthEnabled;
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;
  /// Whether the internal user database is enabled.
  final bool internalUserDatabaseEnabled;

  /// Creates a new [GetDomainAdvancedSecurityOption].
  /// [anonymousAuthEnabled] Required.
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [internalUserDatabaseEnabled] Whether the internal user database is enabled.
  GetDomainAdvancedSecurityOption({
    required this.anonymousAuthEnabled,
    required this.enabled,
    required this.internalUserDatabaseEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousAuthEnabled': anonymousAuthEnabled,
      'enabled': enabled,
      'internalUserDatabaseEnabled': internalUserDatabaseEnabled,
    };
  }

  factory GetDomainAdvancedSecurityOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOption(
      anonymousAuthEnabled: map['anonymousAuthEnabled'] as bool,
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] as bool,
    );
  }
}

