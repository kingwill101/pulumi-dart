// ignore_for_file: unused_element, unnecessary_cast

/// Defines configuration for DRM systems in use.
class DrmSystemsResponse {
  /// Clearkey configuration.
  final Map<String, dynamic> clearkey;

  /// Fairplay configuration.
  final Map<String, dynamic> fairplay;

  /// Playready configuration.
  final Map<String, dynamic> playready;

  /// Widevine configuration.
  final Map<String, dynamic> widevine;

  /// Creates a new [DrmSystemsResponse].
  /// [clearkey] Clearkey configuration.
  /// [fairplay] Fairplay configuration.
  /// [playready] Playready configuration.
  /// [widevine] Widevine configuration.
  DrmSystemsResponse({
    required this.clearkey,
    required this.fairplay,
    required this.playready,
    required this.widevine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clearkey'] = clearkey;
    map['fairplay'] = fairplay;
    map['playready'] = playready;
    map['widevine'] = widevine;
    return map;
  }

  factory DrmSystemsResponse.fromMap(Map<String, dynamic> map) {
    return DrmSystemsResponse(
      clearkey: (map['clearkey'] as Map).cast<String, dynamic>(),
      fairplay: (map['fairplay'] as Map).cast<String, dynamic>(),
      playready: (map['playready'] as Map).cast<String, dynamic>(),
      widevine: (map['widevine'] as Map).cast<String, dynamic>(),
    );
  }
}
