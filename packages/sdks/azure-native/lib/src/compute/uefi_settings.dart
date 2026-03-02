// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security settings like secure boot and vTPM used while creating the virtual machine. Minimum api-version: 2020-12-01.
class UefiSettings {
  /// Specifies whether secure boot should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  final pulumi.Input<bool>? secureBootEnabled;
  /// Specifies whether vTPM should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  final pulumi.Input<bool>? vTpmEnabled;

  /// Creates a new [UefiSettings].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  /// [vTpmEnabled] Specifies whether vTPM should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  UefiSettings({
    this.secureBootEnabled,
    this.vTpmEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
      'vTpmEnabled': ?vTpmEnabled,
    };
  }

  factory UefiSettings.fromMap(Map<String, dynamic> map) {
    return UefiSettings(
      secureBootEnabled: map['secureBootEnabled'] == null ? null : (map['secureBootEnabled']! as bool).input(),
      vTpmEnabled: map['vTpmEnabled'] == null ? null : (map['vTpmEnabled']! as bool).input(),
    );
  }
}

