// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_public_keys_public_keys.dart';

/// SSH Configuration
class VirtualMachinePropertiesSshSsh {
  /// PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  final pulumi.Input<List<VirtualMachinePropertiesPublicKeysPublicKeys>>? publicKeys;

  /// Creates a new [VirtualMachinePropertiesSshSsh].
  /// [publicKeys] PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  VirtualMachinePropertiesSshSsh({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachinePropertiesPublicKeysPublicKeys>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<VirtualMachinePropertiesPublicKeysPublicKeys, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachinePropertiesSshSsh.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesSshSsh(
      publicKeys: map['publicKeys'] == null ? null : (pulumi.Input.decodeList<VirtualMachinePropertiesPublicKeysPublicKeys>(map['publicKeys']!, (value) => VirtualMachinePropertiesPublicKeysPublicKeys.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

