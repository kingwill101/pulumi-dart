// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecServiceDiscoveryDns {
  /// DNS host name for your virtual node.
  final String hostname;

  /// The preferred IP version that this virtual node uses. Valid values: `IPv6_PREFERRED`, `IPv4_PREFERRED`, `IPv4_ONLY`, `IPv6_ONLY`.
  final String? ipPreference;

  /// The DNS response type for the virtual node. Valid values: `LOADBALANCER`, `ENDPOINTS`.
  final String? responseType;

  VirtualNodeSpecServiceDiscoveryDns({
    required this.hostname,
    this.ipPreference,
    this.responseType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    final ipPreferenceValue = ipPreference;
    if (ipPreferenceValue != null) {
      map['ipPreference'] = ipPreferenceValue;
    }
    final responseTypeValue = responseType;
    if (responseTypeValue != null) {
      map['responseType'] = responseTypeValue;
    }
    return map;
  }

  factory VirtualNodeSpecServiceDiscoveryDns.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecServiceDiscoveryDns(
      hostname: map['hostname'] as String,
      ipPreference:
          map['ipPreference'] == null ? null : map['ipPreference'] as String,
      responseType:
          map['responseType'] == null ? null : map['responseType'] as String,
    );
  }
}
