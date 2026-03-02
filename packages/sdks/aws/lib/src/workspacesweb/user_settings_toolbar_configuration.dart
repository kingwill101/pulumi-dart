// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserSettingsToolbarConfiguration {
  /// List of toolbar items to be hidden.
  final pulumi.Input<List<String>>? hiddenToolbarItems;
  /// Maximum display resolution that is allowed for the session.
  final pulumi.Input<String>? maxDisplayResolution;
  /// Type of toolbar displayed during the session.
  final pulumi.Input<String>? toolbarType;
  /// Visual mode of the toolbar.
  final pulumi.Input<String>? visualMode;

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
      hiddenToolbarItems: map['hiddenToolbarItems'] == null ? null : (((map['hiddenToolbarItems'] as List).cast<String>()).input()).input(),
      maxDisplayResolution: map['maxDisplayResolution'] == null ? null : ((map['maxDisplayResolution'] as String).input()).input(),
      toolbarType: map['toolbarType'] == null ? null : ((map['toolbarType'] as String).input()).input(),
      visualMode: map['visualMode'] == null ? null : ((map['visualMode'] as String).input()).input(),
    );
  }
}

