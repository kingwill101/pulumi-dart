// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_public_keys_public_keys.dart';

/// SSH Configuration
class VirtualMachinePropertiesResponseSshSsh {
  /// PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  final List<VirtualMachinePropertiesResponsePublicKeysPublicKeys>? publicKeys;

  /// Creates a new [VirtualMachinePropertiesResponseSshSsh].
  /// [publicKeys] PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  VirtualMachinePropertiesResponseSshSsh({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?publicKeys == null ? null : pulumi.Input.encodeList<VirtualMachinePropertiesResponsePublicKeysPublicKeys, Map<String, dynamic>>(publicKeys!, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesResponseSshSsh.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseSshSsh(
      publicKeys: map['publicKeys'] == null ? null : pulumi.Input.decodeList<VirtualMachinePropertiesResponsePublicKeysPublicKeys>(map['publicKeys'], (value) => VirtualMachinePropertiesResponsePublicKeysPublicKeys.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

