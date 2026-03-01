// ignore_for_file: unused_element, unnecessary_cast


/// Specifies policy and settings for SSH access.
class ComputeInstanceSshSettings {
  /// Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  final String? adminPublicKey;
  /// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on this instance. Enabled - Indicates that the public ssh port is open and accessible according to the VNet/subnet policy if applicable.
  final String? sshPublicAccess;

  /// Creates a new [ComputeInstanceSshSettings].
  /// [adminPublicKey] Specifies the SSH rsa public key file as a string. Use "ssh-keygen -t rsa -b 2048" to generate your SSH key pairs.
  /// [sshPublicAccess] State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on this instance. Enabled - Indicates that the public ssh port is open and accessible according to the VNet/subnet policy if applicable.
  ComputeInstanceSshSettings({
    this.adminPublicKey,
    this.sshPublicAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPublicKey': ?adminPublicKey,
      'sshPublicAccess': ?sshPublicAccess,
    };
  }

  factory ComputeInstanceSshSettings.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceSshSettings(
      adminPublicKey: map['adminPublicKey'] == null ? null : map['adminPublicKey'] as String,
      sshPublicAccess: map['sshPublicAccess'] == null ? null : map['sshPublicAccess'] as String,
    );
  }
}

