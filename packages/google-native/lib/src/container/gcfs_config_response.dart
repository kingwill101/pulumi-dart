// ignore_for_file: unused_element, unnecessary_cast

/// GcfsConfig contains configurations of Google Container File System (image streaming).
class GcfsConfigResponse {
  /// Whether to use GCFS.
  final bool enabled;

  /// Creates a new [GcfsConfigResponse].
  /// [enabled] Whether to use GCFS.
  GcfsConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GcfsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GcfsConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
