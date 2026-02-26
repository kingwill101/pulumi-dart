// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigEncryptionDrmSystems {
  /// Clearkey configuration.
  final Map<String, dynamic>? clearkey;

  /// Fairplay configuration.
  final Map<String, dynamic>? fairplay;

  /// Playready configuration.
  final Map<String, dynamic>? playready;

  /// Widevine configuration.
  final Map<String, dynamic>? widevine;

  JobTemplateConfigEncryptionDrmSystems({
    this.clearkey,
    this.fairplay,
    this.playready,
    this.widevine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clearkeyValue = clearkey;
    if (clearkeyValue != null) {
      map['clearkey'] = clearkeyValue;
    }
    final fairplayValue = fairplay;
    if (fairplayValue != null) {
      map['fairplay'] = fairplayValue;
    }
    final playreadyValue = playready;
    if (playreadyValue != null) {
      map['playready'] = playreadyValue;
    }
    final widevineValue = widevine;
    if (widevineValue != null) {
      map['widevine'] = widevineValue;
    }
    return map;
  }

  factory JobTemplateConfigEncryptionDrmSystems.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateConfigEncryptionDrmSystems(
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
