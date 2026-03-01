// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_public_keys.dart';

/// SSH - contains settings related to ssh configuration
class VirtualMachinePropertiesSsh {
  /// PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  final List<VirtualMachinePropertiesPublicKeys>? publicKeys;

  /// Creates a new [VirtualMachinePropertiesSsh].
  /// [publicKeys] PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  VirtualMachinePropertiesSsh({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?publicKeys == null ? null : pulumi.Input.encodeList<VirtualMachinePropertiesPublicKeys, Map<String, dynamic>>(publicKeys!, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesSsh.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesSsh(
      publicKeys: map['publicKeys'] == null ? null : pulumi.Input.decodeList<VirtualMachinePropertiesPublicKeys>(map['publicKeys'], (value) => VirtualMachinePropertiesPublicKeys.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

