// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_configuration_response.dart';
import 'vault_secret_group_response.dart';
import 'windows_configuration_response.dart';

/// Describes a virtual machine scale set OS profile.
class VirtualMachineScaleSetOSProfileResponse {
  /// Specifies the name of the administrator account. <br><br> **Windows-only
  /// restriction:** Cannot end in "." <br><br> **Disallowed values:**
  /// "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3",
  /// "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup",
  /// "console", "david", "guest", "john", "owner", "root", "server", "sql",
  /// "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5".
  /// <br><br> **Minimum-length (Linux):** 1  character <br><br> **Max-length
  /// (Linux):** 64 characters <br><br> **Max-length (Windows):** 20 characters
  final String? adminUsername;
  /// Specifies whether extension operations should be allowed on the virtual machine
  /// scale set. This may only be set to False when no extensions are present on the
  /// virtual machine scale set.
  final bool? allowExtensionOperations;
  /// Specifies the computer name prefix for all of the virtual machines in the scale
  /// set. Computer name prefixes must be 1 to 15 characters long.
  final String? computerNamePrefix;
  /// Specifies the Linux operating system settings on the virtual machine. For a
  /// list of supported Linux distributions, see [Linux on Azure-Endorsed
  /// Distributions](https://learn.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
  final LinuxConfigurationResponse? linuxConfiguration;
  /// Optional property which must either be set to True or omitted.
  final bool? requireGuestProvisionSignal;
  /// Specifies set of certificates that should be installed onto the virtual
  /// machines in the scale set. To install certificates on a virtual machine it is
  /// recommended to use the [Azure Key Vault virtual machine extension for
  /// Linux](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-linux)
  /// or the [Azure Key Vault virtual machine extension for
  /// Windows](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  final List<VaultSecretGroupResponse>? secrets;
  /// Specifies Windows operating system settings on the virtual machine.
  final WindowsConfigurationResponse? windowsConfiguration;

  /// Creates a new [VirtualMachineScaleSetOSProfileResponse].
  /// [adminUsername] Specifies the name of the administrator account. <br><br> **Windows-only
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
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'requireGuestProvisionSignal': ?requireGuestProvisionSignal,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<VaultSecretGroupResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory VirtualMachineScaleSetOSProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetOSProfileResponse(
      adminUsername: map['adminUsername'] == null ? null : map['adminUsername'] as String,
      allowExtensionOperations: map['allowExtensionOperations'] == null ? null : map['allowExtensionOperations'] as bool,
      computerNamePrefix: map['computerNamePrefix'] == null ? null : map['computerNamePrefix'] as String,
      linuxConfiguration: map['linuxConfiguration'] == null ? null : LinuxConfigurationResponse.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      requireGuestProvisionSignal: map['requireGuestProvisionSignal'] == null ? null : map['requireGuestProvisionSignal'] as bool,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<VaultSecretGroupResponse>(map['secrets'], (value) => VaultSecretGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : WindowsConfigurationResponse.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

