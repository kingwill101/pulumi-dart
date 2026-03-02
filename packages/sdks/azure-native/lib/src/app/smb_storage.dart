// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SMB storage properties
class SmbStorage {
  /// Access mode for storage
  final pulumi.Input<String>? accessMode;
  /// The domain name for the user.
  final pulumi.Input<String>? domain;
  /// The host name or IP address of the SMB server.
  final pulumi.Input<String>? host;
  /// The password for the user.
  final pulumi.Input<String>? password;
  /// The path to the SMB shared folder.
  final pulumi.Input<String>? shareName;
  /// The user to log on to the SMB server.
  final pulumi.Input<String>? username;

  /// Creates a new [SmbStorage].
  /// [accessMode] Access mode for storage
  /// [domain] The domain name for the user.
  /// [host] The host name or IP address of the SMB server.
  /// [password] The password for the user.
  /// [shareName] The path to the SMB shared folder.
  /// [username] The user to log on to the SMB server.
  SmbStorage({
    this.accessMode,
    this.domain,
    this.host,
    this.password,
    this.shareName,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'domain': ?domain,
      'host': ?host,
      'password': ?password,
      'shareName': ?shareName,
      'username': ?username,
    };
  }

  factory SmbStorage.fromMap(Map<String, dynamic> map) {
    return SmbStorage(
      accessMode: map['accessMode'] == null ? null : (map['accessMode'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

