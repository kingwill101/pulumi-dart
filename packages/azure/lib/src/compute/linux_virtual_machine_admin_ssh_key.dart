// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineAdminSshKey {
  /// The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format. Changing this forces a new resource to be created.
  final String publicKey;
  /// The Username for which this Public SSH Key should be configured. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** The Azure VM Agent only allows creating SSH Keys at the path `/home/{username}/.ssh/authorized_keys` - as such this public key will be written to the authorized keys file.
  final String username;

  /// Creates a new [LinuxVirtualMachineAdminSshKey].
  /// [publicKey] The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format. Changing this forces a new resource to be created.
  /// [username] The Username for which this Public SSH Key should be configured. Changing this forces a new resource to be created.
  LinuxVirtualMachineAdminSshKey({
    required this.publicKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey,
      'username': username,
    };
  }

  factory LinuxVirtualMachineAdminSshKey.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineAdminSshKey(
      publicKey: map['publicKey'] as String,
      username: map['username'] as String,
    );
  }
}

