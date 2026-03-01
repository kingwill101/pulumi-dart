// ignore_for_file: unused_element, unnecessary_cast


class AppSpecMaintenance {
  /// Indicates whether the app should be archived. Setting this to true implies that enabled is set to true.
  final bool? archive;
  /// Indicates whether maintenance mode should be enabled for the app.
  final bool? enabled;
  /// A custom offline page to display when maintenance mode is enabled or the app is archived.
  final String? offlinePageUrl;

  /// Creates a new [AppSpecMaintenance].
  /// [archive] Indicates whether the app should be archived. Setting this to true implies that enabled is set to true.
  /// [enabled] Indicates whether maintenance mode should be enabled for the app.
  /// [offlinePageUrl] A custom offline page to display when maintenance mode is enabled or the app is archived.
  AppSpecMaintenance({
    this.archive,
    this.enabled,
    this.offlinePageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archive': ?archive,
      'enabled': ?enabled,
      'offlinePageUrl': ?offlinePageUrl,
    };
  }

  factory AppSpecMaintenance.fromMap(Map<String, dynamic> map) {
    return AppSpecMaintenance(
      archive: map['archive'] == null ? null : map['archive'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      offlinePageUrl: map['offlinePageUrl'] == null ? null : map['offlinePageUrl'] as String,
    );
  }
}

