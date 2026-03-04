// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_patch_settings.dart';
import 'ssh_configuration.dart';

/// Specifies the Linux operating system settings on the virtual machine. For a
/// list of supported Linux distributions, see [Linux on Azure-Endorsed
/// Distributions](https://learn.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
class LinuxConfiguration {
  /// Specifies whether password authentication should be disabled.
  final pulumi.Input<bool>? disablePasswordAuthentication;

  /// Indicates whether VMAgent Platform Updates is enabled for the Linux virtual
  /// machine. Default value is false.
  final pulumi.Input<bool>? enableVMAgentPlatformUpdates;

  /// [Preview Feature] Specifies settings related to VM Guest Patching on Linux.
  final pulumi.Input<LinuxPatchSettings>? patchSettings;

  /// Indicates whether virtual machine agent should be provisioned on the virtual
  /// machine. When this property is not specified in the request body, default
  /// behavior is to set it to true. This will ensure that VM Agent is installed on
  /// the VM so that extensions can be added to the VM later.
  final pulumi.Input<bool>? provisionVMAgent;

  /// Specifies the ssh key configuration for a Linux OS.
  final pulumi.Input<SshConfiguration>? ssh;

  /// Creates a new [LinuxConfiguration].
  /// [disablePasswordAuthentication] Specifies whether password authentication should be disabled.
  /// [enableVMAgentPlatformUpdates] Indicates whether VMAgent Platform Updates is enabled for the Linux virtual
  /// [patchSettings] [Preview Feature] Specifies settings related to VM Guest Patching on Linux.
  /// [provisionVMAgent] Indicates whether virtual machine agent should be provisioned on the virtual
  /// [ssh] Specifies the ssh key configuration for a Linux OS.
  LinuxConfiguration({
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
      'patchSettings':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxPatchSettings,
            Map<String, dynamic>
          >(patchSettings, (value) => value.toMap()),
      'provisionVMAgent': ?provisionVMAgent,
      'ssh':
          ?pulumi.Input.mapOptionalInputValue<
            SshConfiguration,
            Map<String, dynamic>
          >(ssh, (value) => value.toMap()),
    };
  }

  factory LinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return LinuxConfiguration(
      disablePasswordAuthentication: (() {
        final guardedValue = map['disablePasswordAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableVMAgentPlatformUpdates: (() {
        final guardedValue = map['enableVMAgentPlatformUpdates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      patchSettings: (() {
        final guardedValue = map['patchSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxPatchSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisionVMAgent: (() {
        final guardedValue = map['provisionVMAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ssh: (() {
        final guardedValue = map['ssh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SshConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
