// ignore_for_file: unused_element, unnecessary_cast


/// Username / Password Credentials to connect to guest.
class GuestCredentialResponse {
  /// Private key used to authenticate to a virtual machine through ssh.
  final String? privateKey;
  /// Gets or sets username to connect with the guest.
  final String? username;

  /// Creates a new [GuestCredentialResponse].
  /// [privateKey] Private key used to authenticate to a virtual machine through ssh.
  /// [username] Gets or sets username to connect with the guest.
  GuestCredentialResponse({
    this.privateKey,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
      'username': ?username,
    };
  }

  factory GuestCredentialResponse.fromMap(Map<String, dynamic> map) {
    return GuestCredentialResponse(
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

