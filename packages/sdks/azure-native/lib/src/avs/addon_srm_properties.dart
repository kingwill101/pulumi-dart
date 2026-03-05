// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a Site Recovery Manager (SRM) addon
class AddonSrmProperties {
  /// Addon type
  /// Expected value is 'SRM'.
  final pulumi.Input<String> addonType;
  /// The Site Recovery Manager (SRM) license
  final pulumi.Input<String>? licenseKey;

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
      addonType: pulumi.Input.fromValue(map['addonType'] as String),
      licenseKey: (() { final guardedValue = map['licenseKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

