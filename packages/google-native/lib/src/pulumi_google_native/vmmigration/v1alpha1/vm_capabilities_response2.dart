// ignore_for_file: unused_element, unnecessary_cast

/// Migrating VM source information about the VM capabilities needed for some Compute Engine features.
class VmCapabilitiesResponse2 {
  /// The last time OS capabilities list was updated.
  final String lastOsCapabilitiesUpdateTime;

  /// Unordered list. List of certain VM OS capabilities needed for some Compute Engine features.
  final List<String> osCapabilities;

  VmCapabilitiesResponse2({
    required this.lastOsCapabilitiesUpdateTime,
    required this.osCapabilities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastOsCapabilitiesUpdateTime'] = lastOsCapabilitiesUpdateTime;
    map['osCapabilities'] = osCapabilities;
    return map;
  }

  factory VmCapabilitiesResponse2.fromMap(Map<String, dynamic> map) {
    return VmCapabilitiesResponse2(
      lastOsCapabilitiesUpdateTime:
          map['lastOsCapabilitiesUpdateTime'] as String,
      osCapabilities: (map['osCapabilities'] as List).cast<String>(),
    );
  }
}
