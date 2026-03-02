// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesUefiSettings {
  /// Specifies whether secure boot should be enabled on the virtual machine.
  final pulumi.Input<bool>? secureBootEnabled;

  /// Creates a new [VirtualMachinePropertiesUefiSettings].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine.
  VirtualMachinePropertiesUefiSettings({
    this.secureBootEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
    };
  }

  factory VirtualMachinePropertiesUefiSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesUefiSettings(
      secureBootEnabled: map['secureBootEnabled'] == null ? null : (map['secureBootEnabled'] as bool).input(),
    );
  }
}

