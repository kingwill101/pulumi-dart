// ignore_for_file: unused_element, unnecessary_cast


class DomainDefaultUserSettingsStudioWebPortalSettings {
  /// The Applications supported in Studio that are hidden from the Studio left navigation pane.
  final List<String>? hiddenAppTypes;
  /// The instance types you are hiding from the Studio user interface.
  final List<String>? hiddenInstanceTypes;
  /// The machine learning tools that are hidden from the Studio left navigation pane.
  final List<String>? hiddenMlTools;

  /// Creates a new [DomainDefaultUserSettingsStudioWebPortalSettings].
  /// [hiddenAppTypes] The Applications supported in Studio that are hidden from the Studio left navigation pane.
  /// [hiddenInstanceTypes] The instance types you are hiding from the Studio user interface.
  /// [hiddenMlTools] The machine learning tools that are hidden from the Studio left navigation pane.
  DomainDefaultUserSettingsStudioWebPortalSettings({
    this.hiddenAppTypes,
    this.hiddenInstanceTypes,
    this.hiddenMlTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hiddenAppTypes': ?hiddenAppTypes,
      'hiddenInstanceTypes': ?hiddenInstanceTypes,
      'hiddenMlTools': ?hiddenMlTools,
    };
  }

  factory DomainDefaultUserSettingsStudioWebPortalSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsStudioWebPortalSettings(
      hiddenAppTypes: map['hiddenAppTypes'] == null ? null : (map['hiddenAppTypes'] as List).cast<String>(),
      hiddenInstanceTypes: map['hiddenInstanceTypes'] == null ? null : (map['hiddenInstanceTypes'] as List).cast<String>(),
      hiddenMlTools: map['hiddenMlTools'] == null ? null : (map['hiddenMlTools'] as List).cast<String>(),
    );
  }
}

