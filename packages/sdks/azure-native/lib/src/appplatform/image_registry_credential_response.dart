// ignore_for_file: unused_element, unnecessary_cast


/// Credential of the image registry
class ImageRegistryCredentialResponse {
  /// The password of the image registry credential
  final String? password;
  /// The username of the image registry credential
  final String? username;

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
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

