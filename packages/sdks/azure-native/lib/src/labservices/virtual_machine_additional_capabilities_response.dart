// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The additional capabilities for a lab VM.
class VirtualMachineAdditionalCapabilitiesResponse {
  /// Flag to pre-install dedicated GPU drivers.
  final pulumi.Input<String>? installGpuDrivers;

  /// Creates a new [VirtualMachineAdditionalCapabilitiesResponse].
  /// [installGpuDrivers] Flag to pre-install dedicated GPU drivers.
  VirtualMachineAdditionalCapabilitiesResponse({
    this.installGpuDrivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installGpuDrivers': ?installGpuDrivers,
    };
  }

  factory VirtualMachineAdditionalCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAdditionalCapabilitiesResponse(
      installGpuDrivers: map['installGpuDrivers'] == null ? null : (map['installGpuDrivers']! as String).input(),
    );
  }
}

