// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the KALM addon.
class KalmConfigResponse {
  /// Whether KALM is enabled for this cluster.
  final bool enabled;

  KalmConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory KalmConfigResponse.fromMap(Map<String, dynamic> map) {
    return KalmConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
