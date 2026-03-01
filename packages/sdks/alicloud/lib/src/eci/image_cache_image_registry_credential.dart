// ignore_for_file: unused_element, unnecessary_cast


class ImageCacheImageRegistryCredential {
  /// The password of the Image Registry.
  final String? password;
  /// The address of Image Registry without `http://` or `https://`.
  final String? server;
  /// The user name of Image Registry.
  final String? userName;

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
      password: map['password'] == null ? null : map['password'] as String,
      server: map['server'] == null ? null : map['server'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

