// ignore_for_file: unused_element, unnecessary_cast

class JobConfigEncryptionDrmSystems {
  /// Clearkey configuration.
  final Map<String, dynamic>? clearkey;

  /// Fairplay configuration.
  final Map<String, dynamic>? fairplay;

  /// Playready configuration.
  final Map<String, dynamic>? playready;

  /// Widevine configuration.
  final Map<String, dynamic>? widevine;

  /// Creates a new [JobConfigEncryptionDrmSystems].
  /// [clearkey] Clearkey configuration.
  /// [fairplay] Fairplay configuration.
  /// [playready] Playready configuration.
  /// [widevine] Widevine configuration.
  JobConfigEncryptionDrmSystems({
    this.clearkey,
    this.fairplay,
    this.playready,
    this.widevine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clearkey': ?clearkey,
      'fairplay': ?fairplay,
      'playready': ?playready,
      'widevine': ?widevine,
    };
  }

  factory JobConfigEncryptionDrmSystems.fromMap(Map<String, dynamic> map) {
    return JobConfigEncryptionDrmSystems(
      clearkey: map['clearkey'] == null
          ? null
          : (map['clearkey'] as Map).cast<String, dynamic>(),
      fairplay: map['fairplay'] == null
          ? null
          : (map['fairplay'] as Map).cast<String, dynamic>(),
      playready: map['playready'] == null
          ? null
          : (map['playready'] as Map).cast<String, dynamic>(),
      widevine: map['widevine'] == null
          ? null
          : (map['widevine'] as Map).cast<String, dynamic>(),
    );
  }
}
