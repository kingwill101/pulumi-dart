// ignore_for_file: unused_element, unnecessary_cast


/// Username / Password Credentials to connect to guest.
class GuestCredential {
  /// The password to connect with the guest.
  final String? password;
  /// The username to connect with the guest.
  final String? username;

  /// Creates a new [GuestCredential].
  /// [password] The password to connect with the guest.
  /// [username] The username to connect with the guest.
  GuestCredential({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory GuestCredential.fromMap(Map<String, dynamic> map) {
    return GuestCredential(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

