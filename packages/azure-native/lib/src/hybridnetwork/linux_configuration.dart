// ignore_for_file: unused_element, unnecessary_cast

import 'ssh_configuration.dart';

/// Specifies the Linux operating system settings on the virtual machine.
class LinuxConfiguration {
  /// Specifies the ssh key configuration for a Linux OS.
  final SshConfiguration? ssh;

  /// Creates a new [LinuxConfiguration].
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  LinuxConfiguration({
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssh': ?ssh == null ? null : ssh!.toMap(),
    };
  }

  factory LinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return LinuxConfiguration(
      ssh: map['ssh'] == null ? null : SshConfiguration.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
    );
  }
}

