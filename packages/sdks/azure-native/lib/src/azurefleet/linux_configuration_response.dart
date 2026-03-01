// ignore_for_file: unused_element, unnecessary_cast

import 'linux_patch_settings_response.dart';
import 'ssh_configuration_response.dart';

/// Specifies the Linux operating system settings on the virtual machine. For a
/// list of supported Linux distributions, see [Linux on Azure-Endorsed
/// Distributions](https://learn.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
class LinuxConfigurationResponse {
  /// Specifies whether password authentication should be disabled.
  final bool? disablePasswordAuthentication;
  /// Indicates whether VMAgent Platform Updates is enabled for the Linux virtual
  /// machine. Default value is false.
  final bool? enableVMAgentPlatformUpdates;
  /// [Preview Feature] Specifies settings related to VM Guest Patching on Linux.
  final LinuxPatchSettingsResponse? patchSettings;
  /// Indicates whether virtual machine agent should be provisioned on the virtual
  /// machine. When this property is not specified in the request body, default
  /// behavior is to set it to true. This will ensure that VM Agent is installed on
  /// the VM so that extensions can be added to the VM later.
  final bool? provisionVMAgent;
  /// Specifies the ssh key configuration for a Linux OS.
  final SshConfigurationResponse? ssh;

  /// Creates a new [LinuxConfigurationResponse].
  /// [disablePasswordAuthentication] Specifies whether password authentication should be disabled.
  /// [enableVMAgentPlatformUpdates] Indicates whether VMAgent Platform Updates is enabled for the Linux virtual
  /// [patchSettings] [Preview Feature] Specifies settings related to VM Guest Patching on Linux.
  /// [provisionVMAgent] Indicates whether virtual machine agent should be provisioned on the virtual
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  LinuxConfigurationResponse({
    this.disablePasswordAuthentication,
    this.enableVMAgentPlatformUpdates,
    this.patchSettings,
    this.provisionVMAgent,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'enableVMAgentPlatformUpdates': ?enableVMAgentPlatformUpdates,
      'patchSettings': ?patchSettings == null ? null : patchSettings!.toMap(),
      'provisionVMAgent': ?provisionVMAgent,
      'ssh': ?ssh == null ? null : ssh!.toMap(),
    };
  }

  factory LinuxConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LinuxConfigurationResponse(
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : map['disablePasswordAuthentication'] as bool,
      enableVMAgentPlatformUpdates: map['enableVMAgentPlatformUpdates'] == null ? null : map['enableVMAgentPlatformUpdates'] as bool,
      patchSettings: map['patchSettings'] == null ? null : LinuxPatchSettingsResponse.fromMap((map['patchSettings'] as Map).cast<String, dynamic>()),
      provisionVMAgent: map['provisionVMAgent'] == null ? null : map['provisionVMAgent'] as bool,
      ssh: map['ssh'] == null ? null : SshConfigurationResponse.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
    );
  }
}

