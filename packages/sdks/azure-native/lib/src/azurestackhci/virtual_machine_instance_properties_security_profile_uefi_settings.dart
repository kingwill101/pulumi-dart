// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uefi settings - Specifies whether secure boot should be enabled on the virtual machine instance.
class VirtualMachineInstancePropertiesSecurityProfileUefiSettings {
  /// Specifies whether secure boot should be enabled on the virtual machine instance.
  final pulumi.Input<bool>? secureBootEnabled;

  /// Creates a new [VirtualMachineInstancePropertiesSecurityProfileUefiSettings].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine instance.
  VirtualMachineInstancePropertiesSecurityProfileUefiSettings({
    this.secureBootEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secureBootEnabled': ?secureBootEnabled};
  }

  factory VirtualMachineInstancePropertiesSecurityProfileUefiSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineInstancePropertiesSecurityProfileUefiSettings(
      secureBootEnabled: (() {
        final guardedValue = map['secureBootEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
