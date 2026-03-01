// ignore_for_file: unused_element, unnecessary_cast


/// The additional capabilities for a lab VM.
class VirtualMachineAdditionalCapabilitiesResponse {
  /// Flag to pre-install dedicated GPU drivers.
  final String? installGpuDrivers;

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
      installGpuDrivers: map['installGpuDrivers'] == null ? null : map['installGpuDrivers'] as String,
    );
  }
}

