// ignore_for_file: unused_element, unnecessary_cast

/// Looker instance Admin settings fields.
class AdminSettings {
  /// Email domain allowlist for the instance.
  final List<String>? allowedEmailDomains;

  AdminSettings({
    this.allowedEmailDomains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedEmailDomainsValue = allowedEmailDomains;
    if (allowedEmailDomainsValue != null) {
      map['allowedEmailDomains'] = allowedEmailDomainsValue;
    }
    return map;
  }

  factory AdminSettings.fromMap(Map<String, dynamic> map) {
    return AdminSettings(
      allowedEmailDomains: map['allowedEmailDomains'] == null
          ? null
          : (map['allowedEmailDomains'] as List).cast<String>(),
    );
  }
}
