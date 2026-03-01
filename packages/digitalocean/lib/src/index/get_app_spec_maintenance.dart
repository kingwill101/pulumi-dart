// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecMaintenance {
  /// Indicates whether the app should be archived. Setting this to true implies that enabled is set to true.
  final bool? archive;
  /// Whether to automatically deploy images pushed to DOCR.
  final bool? enabled;
  /// A custom offline page to display when maintenance mode is enabled or the app is archived.
  final String? offlinePageUrl;

  /// Creates a new [GetAppSpecMaintenance].
  /// [archive] Indicates whether the app should be archived. Setting this to true implies that enabled is set to true.
  /// [enabled] Whether to automatically deploy images pushed to DOCR.
  /// [offlinePageUrl] A custom offline page to display when maintenance mode is enabled or the app is archived.
  GetAppSpecMaintenance({
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

  factory GetAppSpecMaintenance.fromMap(Map<String, dynamic> map) {
    return GetAppSpecMaintenance(
      archive: map['archive'] == null ? null : map['archive'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      offlinePageUrl: map['offlinePageUrl'] == null ? null : map['offlinePageUrl'] as String,
    );
  }
}

