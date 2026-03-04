// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security settings like secure boot and vTPM used while creating the virtual machine.
class UefiSettings {
  /// Specifies whether secure boot should be enabled on the virtual machine.
  final pulumi.Input<bool>? secureBootEnabled;

  /// Specifies whether vTPM should be enabled on the virtual machine.
  final pulumi.Input<bool>? vTpmEnabled;

  /// Creates a new [UefiSettings].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine.
  /// [vTpmEnabled] Specifies whether vTPM should be enabled on the virtual machine.
  UefiSettings({this.secureBootEnabled, this.vTpmEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
      'vTpmEnabled': ?vTpmEnabled,
    };
  }

  factory UefiSettings.fromMap(Map<String, dynamic> map) {
    return UefiSettings(
      secureBootEnabled: (() {
        final guardedValue = map['secureBootEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vTpmEnabled: (() {
        final guardedValue = map['vTpmEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
