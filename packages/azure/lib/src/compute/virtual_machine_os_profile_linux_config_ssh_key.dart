// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineOsProfileLinuxConfigSshKey {
  /// The Public SSH Key which should be written to the `path` defined above.
  ///
  /// > **Note:** Azure only supports RSA SSH2 key signatures of at least 2048 bits in length
  final String keyData;
  /// The path of the destination file on the virtual machine
  ///
  /// > **NOTE:** Due to a limitation in the Azure VM Agent the only allowed `path` is `/home/{username}/.ssh/authorized_keys`.
  final String path;

  /// Creates a new [VirtualMachineOsProfileLinuxConfigSshKey].
  /// [keyData] The Public SSH Key which should be written to the `path` defined above.
  /// [path] The path of the destination file on the virtual machine
  VirtualMachineOsProfileLinuxConfigSshKey({
    required this.keyData,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
      'path': path,
    };
  }

  factory VirtualMachineOsProfileLinuxConfigSshKey.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfileLinuxConfigSshKey(
      keyData: map['keyData'] as String,
      path: map['path'] as String,
    );
  }
}

