// ignore_for_file: unused_element, unnecessary_cast

class InstanceAdminSettings {
  final List<String>? allowedEmailDomains;

  InstanceAdminSettings({
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

  factory InstanceAdminSettings.fromMap(Map<String, dynamic> map) {
    return InstanceAdminSettings(
      allowedEmailDomains: map['allowedEmailDomains'] == null
          ? null
          : (map['allowedEmailDomains'] as List).cast<String>(),
    );
  }
}
