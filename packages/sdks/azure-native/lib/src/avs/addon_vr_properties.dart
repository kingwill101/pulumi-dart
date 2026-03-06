// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a vSphere Replication (VR) addon
class AddonVrProperties {
  /// Addon type
  /// Expected value is 'VR'.
  final pulumi.Input<String> addonType;
  /// The vSphere Replication Server (VRS) count
  final pulumi.Input<int> vrsCount;

  /// Creates a new [AddonVrProperties].
  /// [addonType] Addon type
  /// [vrsCount] The vSphere Replication Server (VRS) count
  const AddonVrProperties({
    required this.addonType,
    required this.vrsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'vrsCount': vrsCount,
    };
  }

  factory AddonVrProperties.fromMap(Map<String, dynamic> map) {
    return AddonVrProperties(
      addonType: pulumi.Input.fromValue(map['addonType'] as String),
      vrsCount: pulumi.Input.fromValue(map['vrsCount'] as int),
    );
  }
}

