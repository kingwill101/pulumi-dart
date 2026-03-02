// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential of the image registry
class ImageRegistryCredentialResponse {
  /// The password of the image registry credential
  final pulumi.Input<String>? password;
  /// The username of the image registry credential
  final pulumi.Input<String>? username;

  /// Creates a new [ImageRegistryCredentialResponse].
  /// [password] The password of the image registry credential
  /// [username] The username of the image registry credential
  ImageRegistryCredentialResponse({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory ImageRegistryCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredentialResponse(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

