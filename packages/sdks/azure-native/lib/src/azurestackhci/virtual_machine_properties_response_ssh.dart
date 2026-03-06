// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_public_keys.dart';

/// SSH - contains settings related to ssh configuration
class VirtualMachinePropertiesResponseSsh {
  /// PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  final pulumi.Input<List<VirtualMachinePropertiesResponsePublicKeys>>? publicKeys;

  /// Creates a new [VirtualMachinePropertiesResponseSsh].
  /// [publicKeys] PublicKeys - The list of SSH public keys used to authenticate with linux based VMs.
  const VirtualMachinePropertiesResponseSsh({
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachinePropertiesResponsePublicKeys>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<VirtualMachinePropertiesResponsePublicKeys, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachinePropertiesResponseSsh.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseSsh(
      publicKeys: (() { final guardedValue = map['publicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachinePropertiesResponsePublicKeys>(guardedValue, (value) => VirtualMachinePropertiesResponsePublicKeys.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

