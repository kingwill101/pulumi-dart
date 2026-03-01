// ignore_for_file: unused_element, unnecessary_cast


/// Username / Password Credentials to connect to guest.
class GuestCredential {
  /// Gets or sets the password to connect with the guest.
  final String? password;
  /// Private key used to authenticate to a virtual machine through ssh.
  final String? privateKey;
  /// Gets or sets username to connect with the guest.
  final String? username;

  /// Creates a new [GuestCredential].
  /// [password] Gets or sets the password to connect with the guest.
  /// [privateKey] Private key used to authenticate to a virtual machine through ssh.
  /// [username] Gets or sets username to connect with the guest.
  GuestCredential({
    this.password,
    this.privateKey,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'privateKey': ?privateKey,
      'username': ?username,
    };
  }

  factory GuestCredential.fromMap(Map<String, dynamic> map) {
    return GuestCredential(
      password: map['password'] == null ? null : map['password'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

