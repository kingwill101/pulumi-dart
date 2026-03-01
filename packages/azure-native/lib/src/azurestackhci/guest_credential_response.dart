// ignore_for_file: unused_element, unnecessary_cast


/// Username / Password Credentials to connect to guest.
class GuestCredentialResponse {
  /// The username to connect with the guest.
  final String? username;

  /// Creates a new [GuestCredentialResponse].
  /// [username] The username to connect with the guest.
  GuestCredentialResponse({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory GuestCredentialResponse.fromMap(Map<String, dynamic> map) {
    return GuestCredentialResponse(
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

