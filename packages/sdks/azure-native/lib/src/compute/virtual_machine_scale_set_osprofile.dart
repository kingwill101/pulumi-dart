// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_configuration.dart';
import 'vault_secret_group.dart';
import 'windows_configuration.dart';

/// Describes a virtual machine scale set OS profile.
class VirtualMachineScaleSetOSProfile {
  /// Specifies the password of the administrator account. &lt;br&gt;&lt;br&gt; **Minimum-length (Windows):** 8 characters &lt;br&gt;&lt;br&gt; **Minimum-length (Linux):** 6 characters &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 123 characters &lt;br&gt;&lt;br&gt; **Max-length (Linux):** 72 characters &lt;br&gt;&lt;br&gt; **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled &lt;br&gt; Has lower characters &lt;br&gt;Has upper characters &lt;br&gt; Has a digit &lt;br&gt; Has a special character (Regex match [\W_]) &lt;br&gt;&lt;br&gt; **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!" &lt;br&gt;&lt;br&gt; For resetting the password, see [How to reset the Remote Desktop service or its login password in a Windows VM](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/reset-rdp) &lt;br&gt;&lt;br&gt; For resetting root password, see [Manage users, SSH, and check or repair disks on Azure Linux VMs using the VMAccess Extension](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/troubleshoot-ssh-connection)
  final pulumi.Input<String?>? adminPassword;
  /// Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **Windows-only restriction:** Cannot end in "." &lt;br&gt;&lt;br&gt; **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". &lt;br&gt;&lt;br&gt; **Minimum-length (Linux):** 1  character &lt;br&gt;&lt;br&gt; **Max-length (Linux):** 64 characters &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 20 characters
  final pulumi.Input<String?>? adminUsername;
  /// Specifies whether extension operations should be allowed on the virtual machine scale set. This may only be set to False when no extensions are present on the virtual machine scale set.
  final pulumi.Input<bool?>? allowExtensionOperations;
  /// Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 15 characters long.
  final pulumi.Input<String?>? computerNamePrefix;
  /// Specifies a base-64 encoded string of custom data. The base-64 encoded string is decoded to a binary array that is saved as a file on the Virtual Machine. The maximum length of the binary array is 65535 bytes. For using cloud-init for your VM, see [Using cloud-init to customize a Linux VM during creation](https://docs.microsoft.com/azure/virtual-machines/linux/using-cloud-init)
  final pulumi.Input<String?>? customData;
  /// Specifies the Linux operating system settings on the virtual machine. For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
  final pulumi.Input<LinuxConfiguration?>? linuxConfiguration;
  /// Optional property which must either be set to True or omitted.
  final pulumi.Input<bool?>? requireGuestProvisionSignal;
  /// Specifies set of certificates that should be installed onto the virtual machines in the scale set. To install certificates on a virtual machine it is recommended to use the [Azure Key Vault virtual machine extension for Linux](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-linux) or the [Azure Key Vault virtual machine extension for Windows](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  final pulumi.Input<List<VaultSecretGroup>?>? secrets;
  /// Specifies Windows operating system settings on the virtual machine.
  final pulumi.Input<WindowsConfiguration?>? windowsConfiguration;

  /// Creates a new [VirtualMachineScaleSetOSProfile].
  /// [adminPassword] Specifies the password of the administrator account. &lt;br&gt;&lt;br&gt; **Minimum-length (Windows):** 8 characters &lt;br&gt;&lt;br&gt; **Minimum-length (Linux):** 6 characters &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 123 characters &lt;br&gt;&lt;br&gt; **Max-length (Linux):** 72 characters &lt;br&gt;&lt;br&gt; **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled &lt;br&gt; Has lower characters &lt;br&gt;Has upper characters &lt;br&gt; Has a digit &lt;br&gt; Has a special character (Regex match [\W_]) &lt;br&gt;&lt;br&gt; **Disallowed values:** "abc@123", "P@$$w0rd", "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!", "Password1", "Password22", "iloveyou!" &lt;br&gt;&lt;br&gt; For resetting the password, see [How to reset the Remote Desktop service or its login password in a Windows VM](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/reset-rdp) &lt;br&gt;&lt;br&gt; For resetting root password, see [Manage users, SSH, and check or repair disks on Azure Linux VMs using the VMAccess Extension](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/troubleshoot-ssh-connection)
  /// [adminUsername] Specifies the name of the administrator account. &lt;br&gt;&lt;br&gt; **Windows-only restriction:** Cannot end in "." &lt;br&gt;&lt;br&gt; **Disallowed values:** "administrator", "admin", "user", "user1", "test", "user2", "test1", "user3", "admin1", "1", "123", "a", "actuser", "adm", "admin2", "aspnet", "backup", "console", "david", "guest", "john", "owner", "root", "server", "sql", "support", "support_388945a0", "sys", "test2", "test3", "user4", "user5". &lt;br&gt;&lt;br&gt; **Minimum-length (Linux):** 1  character &lt;br&gt;&lt;br&gt; **Max-length (Linux):** 64 characters &lt;br&gt;&lt;br&gt; **Max-length (Windows):** 20 characters
  /// [allowExtensionOperations] Specifies whether extension operations should be allowed on the virtual machine scale set. This may only be set to False when no extensions are present on the virtual machine scale set.
  /// [computerNamePrefix] Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 15 characters long.
  /// [customData] Specifies a base-64 encoded string of custom data. The base-64 encoded string is decoded to a binary array that is saved as a file on the Virtual Machine. The maximum length of the binary array is 65535 bytes. For using cloud-init for your VM, see [Using cloud-init to customize a Linux VM during creation](https://docs.microsoft.com/azure/virtual-machines/linux/using-cloud-init)
  /// [linuxConfiguration] Specifies the Linux operating system settings on the virtual machine. For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
  /// [requireGuestProvisionSignal] Optional property which must either be set to True or omitted.
  /// [secrets] Specifies set of certificates that should be installed onto the virtual machines in the scale set. To install certificates on a virtual machine it is recommended to use the [Azure Key Vault virtual machine extension for Linux](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-linux) or the [Azure Key Vault virtual machine extension for Windows](https://docs.microsoft.com/azure/virtual-machines/extensions/key-vault-windows).
  /// [windowsConfiguration] Specifies Windows operating system settings on the virtual machine.
  const VirtualMachineScaleSetOSProfile({
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
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowExtensionOperations: (() { final guardedValue = map['allowExtensionOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      computerNamePrefix: (() { final guardedValue = map['computerNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxConfiguration: (() { final guardedValue = map['linuxConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireGuestProvisionSignal: (() { final guardedValue = map['requireGuestProvisionSignal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VaultSecretGroup>(guardedValue, (value) => VaultSecretGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsConfiguration: (() { final guardedValue = map['windowsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
