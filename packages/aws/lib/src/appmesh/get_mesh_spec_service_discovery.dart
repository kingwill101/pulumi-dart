// ignore_for_file: unused_element, unnecessary_cast

class GetMeshSpecServiceDiscovery {
  final String ipPreference;

  /// Creates a new [GetMeshSpecServiceDiscovery].
  /// [ipPreference] Required.
  GetMeshSpecServiceDiscovery({required this.ipPreference});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipPreference': ipPreference};
  }

  factory GetMeshSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetMeshSpecServiceDiscovery(
      ipPreference: map['ipPreference'] as String,
    );
  }
}
