// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_configuration_response.dart';

/// Specifies the Linux operating system settings on the virtual machine.
class LinuxConfigurationResponse {
  /// Specifies the ssh key configuration for a Linux OS.
  final pulumi.Input<SshConfigurationResponse>? ssh;

  /// Creates a new [LinuxConfigurationResponse].
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  LinuxConfigurationResponse({
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssh': ?pulumi.Input.mapOptionalInputValue<SshConfigurationResponse, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory LinuxConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LinuxConfigurationResponse(
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SshConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

