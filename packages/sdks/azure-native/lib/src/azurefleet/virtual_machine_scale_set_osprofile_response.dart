// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_configuration_response.dart';
import 'vault_secret_group_response.dart';
import 'windows_configuration_response.dart';

/// Describes a virtual machine scale set OS profile.
class VirtualMachineScaleSetOSProfileResponse {
  /// Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **Windows-only
  /// restriction:** Cannot end in "." &lt;br&gt;&lt;br&gt; **Disallowed values:**
  /// "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3",
  /// "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup",
  /// "console", "david", "guest", "john", "owner", "root", "server", "sql",
  /// "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5".
  /// &lt;br&gt;&lt;br&gt; **Minimum-length (Linux):** 1  character &lt;br&gt;&lt;br&gt; **Max-length
  /// (Linux):** 64 characters &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 20 characters
  final pulumi.Input<String>? adminUsername;
  /// Specifies whether extension operations should be allowed on the virtual machine
  /// scale set. This may only be set to False when no extensions are present on the
  /// virtual machine scale set.
  final pulumi.Input<bool>? allowExtensionOperations;
  /// Specifies the computer name prefix for all of the virtual machines in the scale
  /// set. Computer name prefixes must be 1 to 15 characters long.
  final pulumi.Input<String>? computerNamePrefix;
  /// Specifies the Linux operating system settings on the virtual machine. For a
  /// list of supported Linux distributions, see [Linux on Azure-Endorsed
  /// Distributions](https://learn.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
  final pulumi.Input<LinuxConfigurationResponse>? linuxConfiguration;
  /// Optional property which must either be set to True or omitted.
  final pulumi.Input<bool>? requireGuestProvisionSignal;
  /// Specifies set of certificates that should be installed onto the virtual
  /// machines in the scale set. To install certificates on a virtual machine it is
  /// recommended to use the [Azure Key Vault virtual machine extension for
  /// Linux](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-linux)
  /// or the [Azure Key Vault virtual machine extension for
  /// Windows](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  final pulumi.Input<List<VaultSecretGroupResponse>>? secrets;
  /// Specifies Windows operating system settings on the virtual machine.
  final pulumi.Input<WindowsConfigurationResponse>? windowsConfiguration;

  /// Creates a new [VirtualMachineScaleSetOSProfileResponse].
  /// [adminUsername] Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **Windows-only
  /// [allowExtensionOperations] Specifies whether extension operations should be allowed on the virtual machine
  /// [computerNamePrefix] Specifies the computer name prefix for all of the virtual machines in the scale
  /// [linuxConfiguration] Specifies the Linux operating system settings on the virtual machine. For a
  /// [requireGuestProvisionSignal] Optional property which must either be set to True or omitted.
  /// [secrets] Specifies set of certificates that should be installed onto the virtual
  /// [windowsConfiguration] Specifies Windows operating system settings on the virtual machine.
  VirtualMachineScaleSetOSProfileResponse({
    this.adminUsername,
    this.allowExtensionOperations,
    this.computerNamePrefix,
    this.linuxConfiguration,
    this.requireGuestProvisionSignal,
    this.secrets,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'allowExtensionOperations': ?allowExtensionOperations,
      'computerNamePrefix': ?computerNamePrefix,
      'linuxConfiguration': ?pulumi.Input.mapOptionalInputValue<LinuxConfigurationResponse, Map<String, dynamic>>(linuxConfiguration, (value) => value.toMap()),
      'requireGuestProvisionSignal': ?requireGuestProvisionSignal,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<VaultSecretGroupResponse>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<VaultSecretGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsConfigurationResponse, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetOSProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetOSProfileResponse(
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowExtensionOperations: (() { final guardedValue = map['allowExtensionOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      computerNamePrefix: (() { final guardedValue = map['computerNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxConfiguration: (() { final guardedValue = map['linuxConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireGuestProvisionSignal: (() { final guardedValue = map['requireGuestProvisionSignal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VaultSecretGroupResponse>(guardedValue, (value) => VaultSecretGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsConfiguration: (() { final guardedValue = map['windowsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

