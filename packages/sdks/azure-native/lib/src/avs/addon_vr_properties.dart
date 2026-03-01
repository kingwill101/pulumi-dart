// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a vSphere Replication (VR) addon
class AddonVrProperties {
  /// Addon type
  /// Expected value is 'VR'.
  final String addonType;
  /// The vSphere Replication Server (VRS) count
  final int vrsCount;

  /// Creates a new [AddonVrProperties].
  /// [addonType] Addon type
  /// [vrsCount] The vSphere Replication Server (VRS) count
  AddonVrProperties({
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
      addonType: map['addonType'] as String,
      vrsCount: map['vrsCount'] as int,
    );
  }
}

