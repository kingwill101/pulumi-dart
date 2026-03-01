// ignore_for_file: unused_element, unnecessary_cast


/// AdditionalCapabilities for VM.
class AdditionalCapabilitiesResponse {
  /// The flag that enables or disables hibernation capability on the VM.
  final bool? hibernationEnabled;
  /// The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS.
  /// Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled.
  final bool? ultraSSDEnabled;

  /// Creates a new [AdditionalCapabilitiesResponse].
  /// [hibernationEnabled] The flag that enables or disables hibernation capability on the VM.
  /// [ultraSSDEnabled] The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS.
  AdditionalCapabilitiesResponse({
    this.hibernationEnabled,
    this.ultraSSDEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hibernationEnabled': ?hibernationEnabled,
      'ultraSSDEnabled': ?ultraSSDEnabled,
    };
  }

  factory AdditionalCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalCapabilitiesResponse(
      hibernationEnabled: map['hibernationEnabled'] == null ? null : map['hibernationEnabled'] as bool,
      ultraSSDEnabled: map['ultraSSDEnabled'] == null ? null : map['ultraSSDEnabled'] as bool,
    );
  }
}

