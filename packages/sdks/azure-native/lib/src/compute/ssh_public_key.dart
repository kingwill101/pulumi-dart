// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about SSH certificate public key and the path on the Linux VM where the public key is placed.
class SshPublicKey {
  /// SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format. For creating ssh keys, see [Create SSH keys on Linux and Mac for Linux VMs in Azure]https://docs.microsoft.com/azure/virtual-machines/linux/create-ssh-keys-detailed).
  final pulumi.Input<String>? keyData;
  /// Specifies the full path on the created VM where ssh public key is stored. If the file already exists, the specified key is appended to the file. Example: /home/user/.ssh/authorized_keys
  final pulumi.Input<String>? path;

  /// Creates a new [SshPublicKey].
  /// [keyData] SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format. For creating ssh keys, see [Create SSH keys on Linux and Mac for Linux VMs in Azure]https://docs.microsoft.com/azure/virtual-machines/linux/create-ssh-keys-detailed).
  /// [path] Specifies the full path on the created VM where ssh public key is stored. If the file already exists, the specified key is appended to the file. Example: /home/user/.ssh/authorized_keys
  SshPublicKey({
    this.keyData,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?keyData,
      'path': ?path,
    };
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      keyData: map['keyData'] == null ? null : (map['keyData']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

