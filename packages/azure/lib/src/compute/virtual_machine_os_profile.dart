// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineOsProfile {
  /// (Optional for Windows, Optional for Linux) The password associated with the local administrator account.
  ///
  /// > **NOTE:** If using Linux, it may be preferable to use SSH Key authentication (available in the `os_profile_linux_config` block) instead of password authentication.
  final String? adminPassword;
  /// Specifies the name of the local administrator account.
  final String adminUsername;
  /// Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
  final String computerName;
  /// Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, this provider will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. Changing this forces a new resource to be created.
  final String? customData;

  /// Creates a new [VirtualMachineOsProfile].
  /// [adminPassword] (Optional for Windows, Optional for Linux) The password associated with the local administrator account.
  /// [adminUsername] Specifies the name of the local administrator account.
  /// [computerName] Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
  /// [customData] Specifies custom data to supply to the machine. On Linux-based systems, this can be used as a cloud-init script. On other systems, this will be copied as a file on disk. Internally, this provider will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes. Changing this forces a new resource to be created.
  VirtualMachineOsProfile({
    this.adminPassword,
    required this.adminUsername,
    required this.computerName,
    this.customData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminUsername': adminUsername,
      'computerName': computerName,
      'customData': ?customData,
    };
  }

  factory VirtualMachineOsProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfile(
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      adminUsername: map['adminUsername'] as String,
      computerName: map['computerName'] as String,
      customData: map['customData'] == null ? null : map['customData'] as String,
    );
  }
}

