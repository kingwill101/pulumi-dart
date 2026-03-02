// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserSettingsCookieSynchronizationConfigurationAllowlist {
  /// Domain of the cookie.
  final pulumi.Input<String> domain;
  /// Name of the cookie.
  final pulumi.Input<String>? name;
  /// Path of the cookie.
  final pulumi.Input<String>? path;

  /// Creates a new [UserSettingsCookieSynchronizationConfigurationAllowlist].
  /// [domain] Domain of the cookie.
  /// [name] Name of the cookie.
  /// [path] Path of the cookie.
  UserSettingsCookieSynchronizationConfigurationAllowlist({
    required this.domain,
    this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'name': ?name,
      'path': ?path,
    };
  }

  factory UserSettingsCookieSynchronizationConfigurationAllowlist.fromMap(Map<String, dynamic> map) {
    return UserSettingsCookieSynchronizationConfigurationAllowlist(
      domain: (map['domain'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
    );
  }
}

