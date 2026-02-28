// ignore_for_file: unused_element, unnecessary_cast

class MeshSpecServiceDiscovery {
  /// The IP version to use to control traffic within the mesh. Valid values are `IPv6_PREFERRED`, `IPv4_PREFERRED`, `IPv4_ONLY`, and `IPv6_ONLY`.
  final String? ipPreference;

  /// Creates a new [MeshSpecServiceDiscovery].
  /// [ipPreference] The IP version to use to control traffic within the mesh. Valid values are `IPv6_PREFERRED`, `IPv4_PREFERRED`, `IPv4_ONLY`, and `IPv6_ONLY`.
  MeshSpecServiceDiscovery({
    this.ipPreference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipPreferenceValue = ipPreference;
    if (ipPreferenceValue != null) {
      map['ipPreference'] = ipPreferenceValue;
    }
    return map;
  }

  factory MeshSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return MeshSpecServiceDiscovery(
      ipPreference:
          map['ipPreference'] == null ? null : map['ipPreference'] as String,
    );
  }
}
