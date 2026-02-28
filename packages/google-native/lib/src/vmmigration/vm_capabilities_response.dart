// ignore_for_file: unused_element, unnecessary_cast

/// Migrating VM source information about the VM capabilities needed for some Compute Engine features.
class VmCapabilitiesResponse {
  /// The last time OS capabilities list was updated.
  final String lastOsCapabilitiesUpdateTime;

  /// Unordered list. List of certain VM OS capabilities needed for some Compute Engine features.
  final List<String> osCapabilities;

  /// Creates a new [VmCapabilitiesResponse].
  /// [lastOsCapabilitiesUpdateTime] The last time OS capabilities list was updated.
  /// [osCapabilities] Unordered list. List of certain VM OS capabilities needed for some Compute Engine features.
  VmCapabilitiesResponse({
    required this.lastOsCapabilitiesUpdateTime,
    required this.osCapabilities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastOsCapabilitiesUpdateTime'] = lastOsCapabilitiesUpdateTime;
    map['osCapabilities'] = osCapabilities;
    return map;
  }

  factory VmCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return VmCapabilitiesResponse(
      lastOsCapabilitiesUpdateTime:
          map['lastOsCapabilitiesUpdateTime'] as String,
      osCapabilities: (map['osCapabilities'] as List).cast<String>(),
    );
  }
}
