// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enable_state.dart';

/// The additional capabilities for a lab VM.
class VirtualMachineAdditionalCapabilities {
  /// Flag to pre-install dedicated GPU drivers.
  final pulumi.Input<EnableState?>? installGpuDrivers;

  /// Creates a new [VirtualMachineAdditionalCapabilities].
  /// [installGpuDrivers] Flag to pre-install dedicated GPU drivers.
  VirtualMachineAdditionalCapabilities({
    pulumi.Input<EnableState?>? installGpuDrivers,
  }) : installGpuDrivers = installGpuDrivers ?? pulumi.Input.fromValue(EnableState.fromValue('Disabled'));

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installGpuDrivers': ?pulumi.Input.mapOptionalInputValue<EnableState, String>(installGpuDrivers, (value) => value.wireValue),
    };
  }

  factory VirtualMachineAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAdditionalCapabilities(
      installGpuDrivers: (() { final guardedValue = map['installGpuDrivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnableState.fromValue(guardedValue as String)); })(),
    );
  }
}
