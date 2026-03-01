// ignore_for_file: unused_element, unnecessary_cast


/// Credentials to connect to VMMServer.
class VMMServerPropertiesResponseCredentials {
  /// Username to use to connect to VMMServer.
  final String? username;

  /// Creates a new [VMMServerPropertiesResponseCredentials].
  /// [username] Username to use to connect to VMMServer.
  VMMServerPropertiesResponseCredentials({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory VMMServerPropertiesResponseCredentials.fromMap(Map<String, dynamic> map) {
    return VMMServerPropertiesResponseCredentials(
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

