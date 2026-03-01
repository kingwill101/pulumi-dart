// ignore_for_file: unused_element, unnecessary_cast


/// Credentials for a user on a lab VM.
class Credentials {
  /// The password for the user. This is required for the TemplateVM createOption.
  final String? password;
  /// The username to use when signing in to lab VMs.
  final String username;

  /// Creates a new [Credentials].
  /// [password] The password for the user. This is required for the TemplateVM createOption.
  /// [username] The username to use when signing in to lab VMs.
  Credentials({
    this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': username,
    };
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    return Credentials(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] as String,
    );
  }
}

