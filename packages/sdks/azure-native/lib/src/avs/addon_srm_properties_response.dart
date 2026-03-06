// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a Site Recovery Manager (SRM) addon
class AddonSrmPropertiesResponse {
  /// Addon type
  /// Expected value is 'SRM'.
  final pulumi.Input<String> addonType;
  /// The Site Recovery Manager (SRM) license
  final pulumi.Input<String>? licenseKey;
  /// The state of the addon provisioning
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AddonSrmPropertiesResponse].
  /// [addonType] Addon type
  /// [licenseKey] The Site Recovery Manager (SRM) license
  /// [provisioningState] The state of the addon provisioning
  const AddonSrmPropertiesResponse({
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
      addonType: pulumi.Input.fromValue(map['addonType'] as String),
      licenseKey: (() { final guardedValue = map['licenseKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

