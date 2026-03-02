// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security settings like secure boot used while creating the virtual machine.
class UefiSettings {
  /// Specifies whether secure boot should be enabled on the virtual machine.
  final pulumi.Input<bool>? secureBootEnabled;

  /// Creates a new [UefiSettings].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine.
  UefiSettings({
    this.secureBootEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
    };
  }

  factory UefiSettings.fromMap(Map<String, dynamic> map) {
    return UefiSettings(
      secureBootEnabled: map['secureBootEnabled'] == null ? null : (map['secureBootEnabled'] as bool).input(),
    );
  }
}

