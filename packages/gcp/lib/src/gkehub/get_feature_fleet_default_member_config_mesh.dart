// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigMesh {
  /// Whether to automatically manage Service Mesh Possible values: ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
  final String management;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigMesh].
  /// [management] Whether to automatically manage Service Mesh Possible values: ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
  GetFeatureFleetDefaultMemberConfigMesh({
    required this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['management'] = management;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigMesh.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigMesh(
      management: map['management'] as String,
    );
  }
}
