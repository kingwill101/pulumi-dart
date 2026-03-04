// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageCacheImageRegistryCredential {
  /// The password of the Image Registry.
  final pulumi.Input<String>? password;

  /// The address of Image Registry without `http://` or `https://`.
  final pulumi.Input<String>? server;

  /// The user name of Image Registry.
  final pulumi.Input<String>? userName;

  /// Creates a new [ImageCacheImageRegistryCredential].
  /// [password] The password of the Image Registry.
  /// [server] The address of Image Registry without `http://` or `https://`.
  /// [userName] The user name of Image Registry.
  ImageCacheImageRegistryCredential({
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

  factory ImageCacheImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return ImageCacheImageRegistryCredential(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
