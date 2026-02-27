// ignore_for_file: unused_element, unnecessary_cast

/// Migrating VM source information about the VM capabilities needed for some Compute Engine features.
class VmCapabilitiesResponseVmmigrationV1alpha1 {
  /// The last time OS capabilities list was updated.
  final String lastOsCapabilitiesUpdateTime;

  /// Unordered list. List of certain VM OS capabilities needed for some Compute Engine features.
  final List<String> osCapabilities;

  VmCapabilitiesResponseVmmigrationV1alpha1({
    required this.lastOsCapabilitiesUpdateTime,
    required this.osCapabilities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastOsCapabilitiesUpdateTime'] = lastOsCapabilitiesUpdateTime;
    map['osCapabilities'] = osCapabilities;
    return map;
  }

  factory VmCapabilitiesResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return VmCapabilitiesResponseVmmigrationV1alpha1(
      lastOsCapabilitiesUpdateTime:
          map['lastOsCapabilitiesUpdateTime'] as String,
      osCapabilities: (map['osCapabilities'] as List).cast<String>(),
    );
  }
}
