// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenApiImageCacheImageRegistryCredential {
  final pulumi.Input<String>? password;
  final pulumi.Input<String>? server;
  final pulumi.Input<String>? userName;

  /// Creates a new [OpenApiImageCacheImageRegistryCredential].
  /// [password] Optional.
  /// [server] Optional.
  /// [userName] Optional.
  OpenApiImageCacheImageRegistryCredential({
    this.password,
    this.server,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'server': ?server,
      'userName': ?userName,
    };
  }

  factory OpenApiImageCacheImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return OpenApiImageCacheImageRegistryCredential(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

