// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_settings_response.dart';

/// Specifies the Security profile settings for the virtual machine.
class SecurityProfileResponse {
  /// Specifies the security settings like secure boot used while creating the virtual machine.
  final pulumi.Input<UefiSettingsResponse>? uefiSettings;

  /// Creates a new [SecurityProfileResponse].
  /// [uefiSettings] Specifies the security settings like secure boot used while creating the virtual machine.
  const SecurityProfileResponse({
    this.uefiSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uefiSettings': ?pulumi.Input.mapOptionalInputValue<UefiSettingsResponse, Map<String, dynamic>>(uefiSettings, (value) => value.toMap()),
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      uefiSettings: (() { final guardedValue = map['uefiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UefiSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

