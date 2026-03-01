// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a Site Recovery Manager (SRM) addon
class AddonSrmProperties {
  /// Addon type
  /// Expected value is 'SRM'.
  final String addonType;
  /// The Site Recovery Manager (SRM) license
  final String? licenseKey;

  /// Creates a new [AddonSrmProperties].
  /// [addonType] Addon type
  /// [licenseKey] The Site Recovery Manager (SRM) license
  AddonSrmProperties({
    required this.addonType,
    this.licenseKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'licenseKey': ?licenseKey,
    };
  }

  factory AddonSrmProperties.fromMap(Map<String, dynamic> map) {
    return AddonSrmProperties(
      addonType: map['addonType'] as String,
      licenseKey: map['licenseKey'] == null ? null : map['licenseKey'] as String,
    );
  }
}

