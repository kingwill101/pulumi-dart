// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the security settings like secure boot and vTPM used while creating the virtual machine. Minimum api-version: 2020-12-01.
class UefiSettingsResponse {
  /// Specifies whether secure boot should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  final bool? secureBootEnabled;
  /// Specifies whether vTPM should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  final bool? vTpmEnabled;

  /// Creates a new [UefiSettingsResponse].
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  /// [vTpmEnabled] Specifies whether vTPM should be enabled on the virtual machine. Minimum api-version: 2020-12-01.
  UefiSettingsResponse({
    this.secureBootEnabled,
    this.vTpmEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureBootEnabled': ?secureBootEnabled,
      'vTpmEnabled': ?vTpmEnabled,
    };
  }

  factory UefiSettingsResponse.fromMap(Map<String, dynamic> map) {
    return UefiSettingsResponse(
      secureBootEnabled: map['secureBootEnabled'] == null ? null : map['secureBootEnabled'] as bool,
      vTpmEnabled: map['vTpmEnabled'] == null ? null : map['vTpmEnabled'] as bool,
    );
  }
}

