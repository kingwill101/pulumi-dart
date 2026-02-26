// ignore_for_file: unused_element, unnecessary_cast

class GetDomainAdvancedSecurityOption {
  /// Whether node to node encryption is enabled.
  final bool enabled;

  /// Whether the internal user database is enabled.
  final bool internalUserDatabaseEnabled;

  GetDomainAdvancedSecurityOption({
    required this.enabled,
    required this.internalUserDatabaseEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['internalUserDatabaseEnabled'] = internalUserDatabaseEnabled;
    return map;
  }

  factory GetDomainAdvancedSecurityOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOption(
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] as bool,
    );
  }
}
