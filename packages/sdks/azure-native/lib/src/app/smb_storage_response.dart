// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SMB storage properties
class SmbStorageResponse {
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

  /// Creates a new [SmbStorageResponse].
  /// [accessMode] Access mode for storage
  /// [domain] The domain name for the user.
  /// [host] The host name or IP address of the SMB server.
  /// [password] The password for the user.
  /// [shareName] The path to the SMB shared folder.
  /// [username] The user to log on to the SMB server.
  SmbStorageResponse({
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

  factory SmbStorageResponse.fromMap(Map<String, dynamic> map) {
    return SmbStorageResponse(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareName: (() { final guardedValue = map['shareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

