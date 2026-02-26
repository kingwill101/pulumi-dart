// ignore_for_file: unused_element, unnecessary_cast

class FeatureFleetDefaultMemberConfigMesh {
  /// Whether to automatically manage Service Mesh
  /// Possible values are: `MANAGEMENT_UNSPECIFIED`, `MANAGEMENT_AUTOMATIC`, `MANAGEMENT_MANUAL`.
  final String management;

  FeatureFleetDefaultMemberConfigMesh({
    required this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['management'] = management;
    return map;
  }

  factory FeatureFleetDefaultMemberConfigMesh.fromMap(
      Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigMesh(
      management: map['management'] as String,
    );
  }
}
