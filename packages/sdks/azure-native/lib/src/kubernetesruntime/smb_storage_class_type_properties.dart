// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of SMB StorageClass
class SmbStorageClassTypeProperties {
  /// Server domain
  final pulumi.Input<String?>? domain;
  /// Server password
  final pulumi.Input<String?>? password;
  /// SMB Source
  final pulumi.Input<String> source;
  /// Sub directory under share. If the sub directory doesn't exist, driver will create it
  final pulumi.Input<String?>? subDir;
  /// Type of a storage class
  /// Expected value is 'SMB'.
  final pulumi.Input<String> type;
  /// Server username
  final pulumi.Input<String?>? username;

  /// Creates a new [SmbStorageClassTypeProperties].
  /// [domain] Server domain
  /// [password] Server password
  /// [source] SMB Source
  /// [subDir] Sub directory under share. If the sub directory doesn't exist, driver will create it
  /// [type] Type of a storage class
  /// [username] Server username
  const SmbStorageClassTypeProperties({
    this.domain,
    this.password,
    required this.source,
    this.subDir,
    required this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'password': ?password,
      'source': source,
      'subDir': ?subDir,
      'type': type,
      'username': ?username,
    };
  }

  factory SmbStorageClassTypeProperties.fromMap(Map<String, dynamic> map) {
    return SmbStorageClassTypeProperties(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      subDir: (() { final guardedValue = map['subDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
