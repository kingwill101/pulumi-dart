// ignore_for_file: unused_element, unnecessary_cast


class UserSettingsToolbarConfiguration {
  /// List of toolbar items to be hidden.
  final List<String>? hiddenToolbarItems;
  /// Maximum display resolution that is allowed for the session.
  final String? maxDisplayResolution;
  /// Type of toolbar displayed during the session.
  final String? toolbarType;
  /// Visual mode of the toolbar.
  final String? visualMode;

  /// Creates a new [UserSettingsToolbarConfiguration].
  /// [hiddenToolbarItems] List of toolbar items to be hidden.
  /// [maxDisplayResolution] Maximum display resolution that is allowed for the session.
  /// [toolbarType] Type of toolbar displayed during the session.
  /// [visualMode] Visual mode of the toolbar.
  UserSettingsToolbarConfiguration({
    this.hiddenToolbarItems,
    this.maxDisplayResolution,
    this.toolbarType,
    this.visualMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hiddenToolbarItems': ?hiddenToolbarItems,
      'maxDisplayResolution': ?maxDisplayResolution,
      'toolbarType': ?toolbarType,
      'visualMode': ?visualMode,
    };
  }

  factory UserSettingsToolbarConfiguration.fromMap(Map<String, dynamic> map) {
    return UserSettingsToolbarConfiguration(
      hiddenToolbarItems: map['hiddenToolbarItems'] == null ? null : (map['hiddenToolbarItems'] as List).cast<String>(),
      maxDisplayResolution: map['maxDisplayResolution'] == null ? null : map['maxDisplayResolution'] as String,
      toolbarType: map['toolbarType'] == null ? null : map['toolbarType'] as String,
      visualMode: map['visualMode'] == null ? null : map['visualMode'] as String,
    );
  }
}

