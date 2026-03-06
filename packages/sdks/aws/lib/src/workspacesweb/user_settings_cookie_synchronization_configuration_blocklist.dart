// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserSettingsCookieSynchronizationConfigurationBlocklist {
  /// Domain of the cookie.
  final pulumi.Input<String> domain;
  /// Name of the cookie.
  final pulumi.Input<String>? name;
  /// Path of the cookie.
  final pulumi.Input<String>? path;

  /// Creates a new [UserSettingsCookieSynchronizationConfigurationBlocklist].
  /// [domain] Domain of the cookie.
  /// [name] Name of the cookie.
  /// [path] Path of the cookie.
  const UserSettingsCookieSynchronizationConfigurationBlocklist({
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

  factory UserSettingsCookieSynchronizationConfigurationBlocklist.fromMap(Map<String, dynamic> map) {
    return UserSettingsCookieSynchronizationConfigurationBlocklist(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

