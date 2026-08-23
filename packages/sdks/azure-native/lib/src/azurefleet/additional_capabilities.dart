// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AdditionalCapabilities for VM.
class AdditionalCapabilities {
  /// The flag that enables or disables hibernation capability on the VM.
  final pulumi.Input<bool>? hibernationEnabled;
  /// The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS.
  /// Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled.
  final pulumi.Input<bool>? ultraSSDEnabled;

  /// Creates a new [AdditionalCapabilities].
  /// [hibernationEnabled] The flag that enables or disables hibernation capability on the VM.
  /// [ultraSSDEnabled] The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS.
  const AdditionalCapabilities({
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
      hibernationEnabled: (() { final guardedValue = map['hibernationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ultraSSDEnabled: (() { final guardedValue = map['ultraSSDEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
