// ignore_for_file: unused_element, unnecessary_cast

class UserSettingsCookieSynchronizationConfigurationBlocklist {
  /// Domain of the cookie.
  final String domain;

  /// Name of the cookie.
  final String? name;

  /// Path of the cookie.
  final String? path;

  /// Creates a new [UserSettingsCookieSynchronizationConfigurationBlocklist].
  /// [domain] Domain of the cookie.
  /// [name] Name of the cookie.
  /// [path] Path of the cookie.
  UserSettingsCookieSynchronizationConfigurationBlocklist({
    required this.domain,
    this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory UserSettingsCookieSynchronizationConfigurationBlocklist.fromMap(
      Map<String, dynamic> map) {
    return UserSettingsCookieSynchronizationConfigurationBlocklist(
      domain: map['domain'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
