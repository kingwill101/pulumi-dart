// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The additional capabilities for a lab VM.
class VirtualMachineAdditionalCapabilitiesResponse {
  /// Flag to pre-install dedicated GPU drivers.
  final pulumi.Input<String>? installGpuDrivers;

  /// Creates a new [VirtualMachineAdditionalCapabilitiesResponse].
  /// [installGpuDrivers] Flag to pre-install dedicated GPU drivers.
  const VirtualMachineAdditionalCapabilitiesResponse({
    this.installGpuDrivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installGpuDrivers': ?installGpuDrivers,
    };
  }

  factory VirtualMachineAdditionalCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAdditionalCapabilitiesResponse(
      installGpuDrivers: (() { final guardedValue = map['installGpuDrivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

