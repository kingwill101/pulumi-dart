// ignore_for_file: unused_element, unnecessary_cast

class AzureNodePoolConfigSshConfig {
  /// The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page.
  final String authorizedKey;

  /// Creates a new [AzureNodePoolConfigSshConfig].
  /// [authorizedKey] The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page.
  AzureNodePoolConfigSshConfig({
    required this.authorizedKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizedKey'] = authorizedKey;
    return map;
  }

  factory AzureNodePoolConfigSshConfig.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolConfigSshConfig(
      authorizedKey: map['authorizedKey'] as String,
    );
  }
}
