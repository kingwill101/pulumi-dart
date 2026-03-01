// ignore_for_file: unused_element, unnecessary_cast

import 'ssh_configuration_response.dart';

/// Specifies the Linux operating system settings on the virtual machine.
class LinuxConfigurationResponse {
  /// Specifies the ssh key configuration for a Linux OS.
  final SshConfigurationResponse? ssh;

  /// Creates a new [LinuxConfigurationResponse].
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  LinuxConfigurationResponse({
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssh': ?ssh == null ? null : ssh!.toMap(),
    };
  }

  factory LinuxConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LinuxConfigurationResponse(
      ssh: map['ssh'] == null ? null : SshConfigurationResponse.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
    );
  }
}

