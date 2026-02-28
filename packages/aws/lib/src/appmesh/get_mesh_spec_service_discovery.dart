// ignore_for_file: unused_element, unnecessary_cast

class GetMeshSpecServiceDiscovery {
  final String ipPreference;

  /// Creates a new [GetMeshSpecServiceDiscovery].
  /// [ipPreference] Required.
  GetMeshSpecServiceDiscovery({
    required this.ipPreference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipPreference'] = ipPreference;
    return map;
  }

  factory GetMeshSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetMeshSpecServiceDiscovery(
      ipPreference: map['ipPreference'] as String,
    );
  }
}
