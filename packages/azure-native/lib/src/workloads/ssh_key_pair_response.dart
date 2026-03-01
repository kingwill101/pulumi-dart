// ignore_for_file: unused_element, unnecessary_cast


/// The SSH Key-pair used to authenticate with the VM. The key needs to be at least 2048-bit and in ssh-rsa format. For creating ssh keys, see [Create SSH keys on Linux and Mac for Linux VMs in Azure](https://learn.microsoft.com/azure/virtual-machines/linux/create-ssh-keys-detailed).
class SshKeyPairResponse {
  /// SSH private key.
  final String? privateKey;
  /// SSH public key
  final String? publicKey;

  /// Creates a new [SshKeyPairResponse].
  /// [privateKey] SSH private key.
  /// [publicKey] SSH public key
  SshKeyPairResponse({
    this.privateKey,
    this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
      'publicKey': ?publicKey,
    };
  }

  factory SshKeyPairResponse.fromMap(Map<String, dynamic> map) {
    return SshKeyPairResponse(
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
    );
  }
}

