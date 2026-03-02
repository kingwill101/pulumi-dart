// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesPublicKeysPublicKeys {
  /// KeyData - SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format. <br><br> For creating ssh keys, see [Create SSH keys on Linux and Mac for Li      nux VMs in Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-mac-create-ssh-keys?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
  final pulumi.Input<String>? keyData;
  /// Path - Specifies the full path on the created VM where ssh public key is stored. If the file already exists, the specified key is appended to the file. Example: /home/user/.ssh/authorized_keys
  final pulumi.Input<String>? path;

  /// Creates a new [VirtualMachinePropertiesPublicKeysPublicKeys].
  /// [keyData] KeyData - SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format. <br><br> For creating ssh keys, see [Create SSH keys on Linux and Mac for Li      nux VMs in Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-mac-create-ssh-keys?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
  /// [path] Path - Specifies the full path on the created VM where ssh public key is stored. If the file already exists, the specified key is appended to the file. Example: /home/user/.ssh/authorized_keys
  VirtualMachinePropertiesPublicKeysPublicKeys({
    this.keyData,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?keyData,
      'path': ?path,
    };
  }

  factory VirtualMachinePropertiesPublicKeysPublicKeys.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesPublicKeysPublicKeys(
      keyData: map['keyData'] == null ? null : (map['keyData'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
    );
  }
}

