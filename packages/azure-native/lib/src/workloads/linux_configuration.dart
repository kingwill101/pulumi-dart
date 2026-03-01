// ignore_for_file: unused_element, unnecessary_cast

import 'ssh_configuration.dart';
import 'ssh_key_pair.dart';

/// Specifies the Linux operating system settings on the virtual machine. For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://learn.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
class LinuxConfiguration {
  /// Specifies whether password authentication should be disabled.
  final bool? disablePasswordAuthentication;
  /// The OS Type
  /// Expected value is 'Linux'.
  final String osType;
  /// Specifies the ssh key configuration for a Linux OS. (This property is deprecated, please use 'sshKeyPair' instead)
  final SshConfiguration? ssh;
  /// The SSH Key-pair used to authenticate with the VM's.
  final SshKeyPair? sshKeyPair;

  /// Creates a new [LinuxConfiguration].
  /// [disablePasswordAuthentication] Specifies whether password authentication should be disabled.
  /// [osType] The OS Type
  /// [ssh] Specifies the ssh key configuration for a Linux OS. (This property is deprecated, please use 'sshKeyPair' instead)
  /// [sshKeyPair] The SSH Key-pair used to authenticate with the VM's.
  LinuxConfiguration({
    this.disablePasswordAuthentication,
    required this.osType,
    this.ssh,
    this.sshKeyPair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'osType': osType,
      'ssh': ?ssh == null ? null : ssh!.toMap(),
      'sshKeyPair': ?sshKeyPair == null ? null : sshKeyPair!.toMap(),
    };
  }

  factory LinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return LinuxConfiguration(
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : map['disablePasswordAuthentication'] as bool,
      osType: map['osType'] as String,
      ssh: map['ssh'] == null ? null : SshConfiguration.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
      sshKeyPair: map['sshKeyPair'] == null ? null : SshKeyPair.fromMap((map['sshKeyPair'] as Map).cast<String, dynamic>()),
    );
  }
}

