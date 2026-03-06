// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_profile_properties_ssh.dart';

/// LinuxProfile - Profile for Linux VMs in the container service cluster.
class LinuxProfileProperties {
  /// AdminUsername - The administrator username to use for Linux VMs.
  final pulumi.Input<String>? adminUsername;
  /// SSH - SSH configuration for Linux-based VMs running on Azure.
  final pulumi.Input<LinuxProfilePropertiesSsh>? ssh;

  /// Creates a new [LinuxProfileProperties].
  /// [adminUsername] AdminUsername - The administrator username to use for Linux VMs.
  /// [ssh] SSH - SSH configuration for Linux-based VMs running on Azure.
  const LinuxProfileProperties({
    this.adminUsername,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'ssh': ?pulumi.Input.mapOptionalInputValue<LinuxProfilePropertiesSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory LinuxProfileProperties.fromMap(Map<String, dynamic> map) {
    return LinuxProfileProperties(
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxProfilePropertiesSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

