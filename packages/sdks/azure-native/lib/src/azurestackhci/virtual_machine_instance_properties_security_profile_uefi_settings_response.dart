// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uefi settings - Specifies whether secure boot should be enabled on the virtual machine instance.
class VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse {
  /// Specifies whether secure boot should be enabled on the virtual machine instance.
  final pulumi.Input<bool>? secureBootEnabled;

  /// Creates a new [VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine instance.
  VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse({
    this.secureBootEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
    };
  }

  factory VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesSecurityProfileUefiSettingsResponse(
      secureBootEnabled: (() { final guardedValue = map['secureBootEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

