// ignore_for_file: unused_element, unnecessary_cast

/// GcfsConfig contains configurations of Google Container File System.
class GcfsConfigResponse2 {
  /// Whether to use GCFS.
  final bool enabled;

  GcfsConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GcfsConfigResponse2.fromMap(Map<String, dynamic> map) {
    return GcfsConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
