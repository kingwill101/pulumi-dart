// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_configuration.dart';
import 'vault_secret_group.dart';
import 'windows_configuration.dart';

/// Describes a virtual machine scale set OS profile.
class VirtualMachineScaleSetOSProfile {
  /// Specifies the password of the administrator account. <br><br> **Minimum-length
  /// (Windows):** 8 characters <br><br> **Minimum-length (Linux):** 6 characters
  /// <br><br> **Max-length (Windows):** 123 characters <br><br> **Max-length
  /// (Linux):** 72 characters <br><br> **Complexity requirements:** 3 out of 4
  /// conditions below need to be fulfilled <br> Has lower characters <br>Has upper
  /// characters <br> Has a digit <br> Has a special character (Regex match [\W_])
  /// <br><br> **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd",
  /// "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1",
  /// "Password22", "iloveyou!" <br><br> For resetting the password, see [How to
  /// reset the Remote Desktop service or its login password in a Windows
  /// VM](https://learn.microsoft.com/troubleshoot/azure/virtual-machines/reset-rdp)
  /// <br><br> For resetting root password, see [Manage users, SSH, and check or
  /// repair disks on Azure Linux VMs using the VMAccess
  /// Extension](https://learn.microsoft.com/troubleshoot/azure/virtual-machines/troubleshoot-ssh-connection)
  final pulumi.Input<String>? adminPassword;
  /// Specifies the name of the administrator account. <br><br> **Windows-only
  /// restriction:** Cannot end in "." <br><br> **Disallowed values:**
  /// "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3",
  /// "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup",
  /// "console", "david", "guest", "john", "owner", "root", "server", "sql",
  /// "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5".
  /// <br><br> **Minimum-length (Linux):** 1  character <br><br> **Max-length
  /// (Linux):** 64 characters <br><br> **Max-length (Windows):** 20 characters
  final pulumi.Input<String>? adminUsername;
  /// Specifies whether extension operations should be allowed on the virtual machine
  /// scale set. This may only be set to False when no extensions are present on the
  /// virtual machine scale set.
  final pulumi.Input<bool>? allowExtensionOperations;
  /// Specifies the computer name prefix for all of the virtual machines in the scale
  /// set. Computer name prefixes must be 1 to 15 characters long.
  final pulumi.Input<String>? computerNamePrefix;
  /// Specifies a base-64 encoded string of custom data. The base-64 encoded string
  /// is decoded to a binary array that is saved as a file on the Virtual Machine.
  /// The maximum length of the binary array is 65535 bytes. For using cloud-init for
  /// your VM, see [Using cloud-init to customize a Linux VM during
  /// creation](https://learn.microsoft.com/azure/virtual-machines/linux/using-cloud-init)
  final pulumi.Input<String>? customData;
  /// Specifies the Linux operating system settings on the virtual machine. For a
  /// list of supported Linux distributions, see [Linux on Azure-Endorsed
  /// Distributions](https://learn.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
  final pulumi.Input<LinuxConfiguration>? linuxConfiguration;
  /// Optional property which must either be set to True or omitted.
  final pulumi.Input<bool>? requireGuestProvisionSignal;
  /// Specifies set of certificates that should be installed onto the virtual
  /// machines in the scale set. To install certificates on a virtual machine it is
  /// recommended to use the [Azure Key Vault virtual machine extension for
  /// Linux](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-linux)
  /// or the [Azure Key Vault virtual machine extension for
  /// Windows](https://learn.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  final pulumi.Input<List<VaultSecretGroup>>? secrets;
  /// Specifies Windows operating system settings on the virtual machine.
  final pulumi.Input<WindowsConfiguration>? windowsConfiguration;

  /// Creates a new [VirtualMachineScaleSetOSProfile].
  /// [adminPassword] Specifies the password of the administrator account. <br><br> **Minimum-length
  /// [adminUsername] Specifies the name of the administrator account. <br><br> **Windows-only
  /// [allowExtensionOperations] Specifies whether extension operations should be allowed on the virtual machine
  /// [computerNamePrefix] Specifies the computer name prefix for all of the virtual machines in the scale
  /// [customData] Specifies a base-64 encoded string of custom data. The base-64 encoded string
  /// [linuxConfiguration] Specifies the Linux operating system settings on the virtual machine. For a
  /// [requireGuestProvisionSignal] Optional property which must either be set to True or omitted.
  /// [secrets] Specifies set of certificates that should be installed onto the virtual
  /// [windowsConfiguration] Specifies Windows operating system settings on the virtual machine.
  VirtualMachineScaleSetOSProfile({
    this.adminPassword,
    this.adminUsername,
    this.allowExtensionOperations,
    this.computerNamePrefix,
    this.customData,
    this.linuxConfiguration,
    this.requireGuestProvisionSignal,
    this.secrets,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'allowExtensionOperations': ?allowExtensionOperations,
      'computerNamePrefix': ?computerNamePrefix,
      'customData': ?customData,
      'linuxConfiguration': ?pulumi.Input.mapOptionalInputValue<LinuxConfiguration, Map<String, dynamic>>(linuxConfiguration, (value) => value.toMap()),
      'requireGuestProvisionSignal': ?requireGuestProvisionSignal,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<VaultSecretGroup>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<VaultSecretGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsConfiguration, Map<String, dynamic>>(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetOSProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetOSProfile(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword'] as String).input(),
      adminUsername: map['adminUsername'] == null ? null : (map['adminUsername'] as String).input(),
      allowExtensionOperations: map['allowExtensionOperations'] == null ? null : (map['allowExtensionOperations'] as bool).input(),
      computerNamePrefix: map['computerNamePrefix'] == null ? null : (map['computerNamePrefix'] as String).input(),
      customData: map['customData'] == null ? null : (map['customData'] as String).input(),
      linuxConfiguration: map['linuxConfiguration'] == null ? null : (LinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>())).input(),
      requireGuestProvisionSignal: map['requireGuestProvisionSignal'] == null ? null : (map['requireGuestProvisionSignal'] as bool).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<VaultSecretGroup>(map['secrets'], (value) => VaultSecretGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : (WindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

