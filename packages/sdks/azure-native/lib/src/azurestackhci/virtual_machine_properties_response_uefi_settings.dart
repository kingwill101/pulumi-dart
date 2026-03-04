// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesResponseUefiSettings {
  /// Specifies whether secure boot should be enabled on the virtual machine.
  final pulumi.Input<bool>? secureBootEnabled;

  /// Creates a new [VirtualMachinePropertiesResponseUefiSettings].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine.
  VirtualMachinePropertiesResponseUefiSettings({this.secureBootEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secureBootEnabled': ?secureBootEnabled};
  }

  factory VirtualMachinePropertiesResponseUefiSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePropertiesResponseUefiSettings(
      secureBootEnabled: (() {
        final guardedValue = map['secureBootEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
