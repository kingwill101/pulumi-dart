// ignore_for_file: unused_element, unnecessary_cast


/// Admin credentials for virtual machine
class VirtualMachineSshCredentials {
  /// Password of admin account
  final String? password;
  /// Private key data
  final String? privateKeyData;
  /// Public key data
  final String? publicKeyData;
  /// Username of admin account
  final String? username;

  /// Creates a new [VirtualMachineSshCredentials].
  /// [password] Password of admin account
  /// [privateKeyData] Private key data
  /// [publicKeyData] Public key data
  /// [username] Username of admin account
  VirtualMachineSshCredentials({
    this.password,
    this.privateKeyData,
    this.publicKeyData,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'privateKeyData': ?privateKeyData,
      'publicKeyData': ?publicKeyData,
      'username': ?username,
    };
  }

  factory VirtualMachineSshCredentials.fromMap(Map<String, dynamic> map) {
    return VirtualMachineSshCredentials(
      password: map['password'] == null ? null : map['password'] as String,
      privateKeyData: map['privateKeyData'] == null ? null : map['privateKeyData'] as String,
      publicKeyData: map['publicKeyData'] == null ? null : map['publicKeyData'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

