// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ColdStorageOptions
class ColdStorageOptionsResponse {
  /// <p>Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage to enable cold storage.</p>
  final bool? enabled;

  /// Creates a new [ColdStorageOptionsResponse].
  /// [enabled] <p>Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage to enable cold storage.</p>
  ColdStorageOptionsResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ColdStorageOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ColdStorageOptionsResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

