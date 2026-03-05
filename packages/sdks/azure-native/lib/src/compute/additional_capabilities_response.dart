// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables or disables a capability on the virtual machine or virtual machine scale set.
class AdditionalCapabilitiesResponse {
  /// The flag that enables or disables hibernation capability on the VM.
  final pulumi.Input<bool>? hibernationEnabled;
  /// The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS. Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled.
  final pulumi.Input<bool>? ultraSSDEnabled;

  /// Creates a new [AdditionalCapabilitiesResponse].
  /// [hibernationEnabled] The flag that enables or disables hibernation capability on the VM.
  /// [ultraSSDEnabled] The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS. Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled.
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
      hibernationEnabled: (() { final guardedValue = map['hibernationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ultraSSDEnabled: (() { final guardedValue = map['ultraSSDEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

