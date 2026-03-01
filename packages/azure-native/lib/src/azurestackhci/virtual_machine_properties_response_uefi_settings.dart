// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachinePropertiesResponseUefiSettings {
  /// Specifies whether secure boot should be enabled on the virtual machine.
  final bool? secureBootEnabled;

  /// Creates a new [VirtualMachinePropertiesResponseUefiSettings].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine.
  VirtualMachinePropertiesResponseUefiSettings({
    this.secureBootEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
    };
  }

  factory VirtualMachinePropertiesResponseUefiSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseUefiSettings(
      secureBootEnabled: map['secureBootEnabled'] == null ? null : map['secureBootEnabled'] as bool,
    );
  }
}

