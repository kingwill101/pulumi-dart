// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables or disables a capability on the virtual machine or virtual machine scale set.
class AdditionalCapabilities {
  /// The flag that enables or disables hibernation capability on the VM.
  final pulumi.Input<bool>? hibernationEnabled;
  /// The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS. Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled.
  final pulumi.Input<bool>? ultraSSDEnabled;

  /// Creates a new [AdditionalCapabilities].
  /// [hibernationEnabled] The flag that enables or disables hibernation capability on the VM.
  /// [ultraSSDEnabled] The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS. Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled.
  AdditionalCapabilities({
    this.hibernationEnabled,
    this.ultraSSDEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hibernationEnabled': ?hibernationEnabled,
      'ultraSSDEnabled': ?ultraSSDEnabled,
    };
  }

  factory AdditionalCapabilities.fromMap(Map<String, dynamic> map) {
    return AdditionalCapabilities(
      hibernationEnabled: map['hibernationEnabled'] == null ? null : (map['hibernationEnabled']! as bool).input(),
      ultraSSDEnabled: map['ultraSSDEnabled'] == null ? null : (map['ultraSSDEnabled']! as bool).input(),
    );
  }
}

