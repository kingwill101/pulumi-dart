// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an Arc addon
class AddonArcProperties {
  /// Addon type
  /// Expected value is 'Arc'.
  final pulumi.Input<String> addonType;
  /// The VMware vCenter resource ID
  final pulumi.Input<String>? vCenter;

  /// Creates a new [AddonArcProperties].
  /// [addonType] Addon type
  /// [vCenter] The VMware vCenter resource ID
  const AddonArcProperties({
    required this.addonType,
    this.vCenter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'vCenter': ?vCenter,
    };
  }

  factory AddonArcProperties.fromMap(Map<String, dynamic> map) {
    return AddonArcProperties(
      addonType: pulumi.Input.fromValue(map['addonType'] as String),
      vCenter: (() { final guardedValue = map['vCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

