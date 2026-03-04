// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential of the image registry
class ImageRegistryCredential {
  /// The password of the image registry credential
  final pulumi.Input<String>? password;

  /// The username of the image registry credential
  final pulumi.Input<String>? username;

  /// Creates a new [ImageRegistryCredential].
  /// [password] The password of the image registry credential
  /// [username] The username of the image registry credential
  ImageRegistryCredential({this.password, this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'username': ?username};
  }

  factory ImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredential(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
