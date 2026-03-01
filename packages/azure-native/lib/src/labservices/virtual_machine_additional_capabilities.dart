// ignore_for_file: unused_element, unnecessary_cast

import 'enable_state.dart';

/// The additional capabilities for a lab VM.
class VirtualMachineAdditionalCapabilities {
  /// Flag to pre-install dedicated GPU drivers.
  final EnableState? installGpuDrivers;

  /// Creates a new [VirtualMachineAdditionalCapabilities].
  /// [installGpuDrivers] Flag to pre-install dedicated GPU drivers.
  VirtualMachineAdditionalCapabilities({
    this.installGpuDrivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installGpuDrivers': ?installGpuDrivers == null ? null : installGpuDrivers!.value,
    };
  }

  factory VirtualMachineAdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAdditionalCapabilities(
      installGpuDrivers: map['installGpuDrivers'] == null ? null : EnableState.fromValue(map['installGpuDrivers'] as String),
    );
  }
}

