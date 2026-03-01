// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a Site Recovery Manager (SRM) addon
class AddonSrmPropertiesResponse {
  /// Addon type
  /// Expected value is 'SRM'.
  final String addonType;
  /// The Site Recovery Manager (SRM) license
  final String? licenseKey;
  /// The state of the addon provisioning
  final String provisioningState;

  /// Creates a new [AddonSrmPropertiesResponse].
  /// [addonType] Addon type
  /// [licenseKey] The Site Recovery Manager (SRM) license
  /// [provisioningState] The state of the addon provisioning
  AddonSrmPropertiesResponse({
    required this.addonType,
    this.licenseKey,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'licenseKey': ?licenseKey,
      'provisioningState': provisioningState,
    };
  }

  factory AddonSrmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddonSrmPropertiesResponse(
      addonType: map['addonType'] as String,
      licenseKey: map['licenseKey'] == null ? null : map['licenseKey'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

