// ignore_for_file: unused_element, unnecessary_cast

import 'container_service_ssh_configuration_response.dart';

/// Profile for Linux VMs in the container service cluster.
class ContainerServiceLinuxProfileResponse {
  /// The administrator username to use for Linux VMs.
  final String adminUsername;
  /// The SSH configuration for Linux-based VMs running on Azure.
  final ContainerServiceSshConfigurationResponse ssh;

  /// Creates a new [ContainerServiceLinuxProfileResponse].
  /// [adminUsername] The administrator username to use for Linux VMs.
  /// [ssh] The SSH configuration for Linux-based VMs running on Azure.
  ContainerServiceLinuxProfileResponse({
    required this.adminUsername,
    required this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'ssh': ssh.toMap(),
    };
  }

  factory ContainerServiceLinuxProfileResponse.fromMap(Map<String, dynamic> map) {
    return ContainerServiceLinuxProfileResponse(
      adminUsername: map['adminUsername'] as String,
      ssh: ContainerServiceSshConfigurationResponse.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
    );
  }
}

