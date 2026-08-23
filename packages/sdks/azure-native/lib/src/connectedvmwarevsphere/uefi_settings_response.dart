// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security settings like secure boot used while creating the virtual machine.
class UefiSettingsResponse {
  /// Specifies whether secure boot should be enabled on the virtual machine.
  final pulumi.Input<bool>? secureBootEnabled;

  /// Creates a new [UefiSettingsResponse].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine.
  const UefiSettingsResponse({
    this.secureBootEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
    };
  }

  factory UefiSettingsResponse.fromMap(Map<String, dynamic> map) {
    return UefiSettingsResponse(
      secureBootEnabled: (() { final guardedValue = map['secureBootEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
