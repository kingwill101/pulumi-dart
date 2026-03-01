// ignore_for_file: unused_element, unnecessary_cast

import 'container_service_ssh_configuration.dart';

/// Profile for Linux VMs in the container service cluster.
class ContainerServiceLinuxProfile {
  /// The administrator username to use for Linux VMs.
  final String adminUsername;
  /// The SSH configuration for Linux-based VMs running on Azure.
  final ContainerServiceSshConfiguration ssh;

  /// Creates a new [ContainerServiceLinuxProfile].
  /// [adminUsername] The administrator username to use for Linux VMs.
  /// [ssh] The SSH configuration for Linux-based VMs running on Azure.
  ContainerServiceLinuxProfile({
    required this.adminUsername,
    required this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'ssh': ssh.toMap(),
    };
  }

  factory ContainerServiceLinuxProfile.fromMap(Map<String, dynamic> map) {
    return ContainerServiceLinuxProfile(
      adminUsername: map['adminUsername'] as String,
      ssh: ContainerServiceSshConfiguration.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
    );
  }
}

