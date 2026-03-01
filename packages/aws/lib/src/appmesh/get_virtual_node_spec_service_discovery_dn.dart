// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecServiceDiscoveryDn {
  final String hostname;
  final String ipPreference;
  final String responseType;

  /// Creates a new [GetVirtualNodeSpecServiceDiscoveryDn].
  /// [hostname] Required.
  /// [ipPreference] Required.
  /// [responseType] Required.
  GetVirtualNodeSpecServiceDiscoveryDn({
    required this.hostname,
    required this.ipPreference,
    required this.responseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'ipPreference': ipPreference,
      'responseType': responseType,
    };
  }

  factory GetVirtualNodeSpecServiceDiscoveryDn.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecServiceDiscoveryDn(
      hostname: map['hostname'] as String,
      ipPreference: map['ipPreference'] as String,
      responseType: map['responseType'] as String,
    );
  }
}
