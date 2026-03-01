// ignore_for_file: unused_element, unnecessary_cast


/// Credential of the image registry
class ImageRegistryCredential {
  /// The password of the image registry credential
  final String? password;
  /// The username of the image registry credential
  final String? username;

  /// Creates a new [ImageRegistryCredential].
  /// [password] The password of the image registry credential
  /// [username] The username of the image registry credential
  ImageRegistryCredential({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory ImageRegistryCredential.fromMap(Map<String, dynamic> map) {
    return ImageRegistryCredential(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

