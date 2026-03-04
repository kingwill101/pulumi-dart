// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsStudioWebPortalSettings {
  /// The Applications supported in Studio that are hidden from the Studio left navigation pane.
  final pulumi.Input<List<String>>? hiddenAppTypes;

  /// The instance types you are hiding from the Studio user interface.
  final pulumi.Input<List<String>>? hiddenInstanceTypes;

  /// The machine learning tools that are hidden from the Studio left navigation pane.
  final pulumi.Input<List<String>>? hiddenMlTools;

  /// Creates a new [UserProfileUserSettingsStudioWebPortalSettings].
  /// [hiddenAppTypes] The Applications supported in Studio that are hidden from the Studio left navigation pane.
  /// [hiddenInstanceTypes] The instance types you are hiding from the Studio user interface.
  /// [hiddenMlTools] The machine learning tools that are hidden from the Studio left navigation pane.
  UserProfileUserSettingsStudioWebPortalSettings({
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

  factory UserProfileUserSettingsStudioWebPortalSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserProfileUserSettingsStudioWebPortalSettings(
      hiddenAppTypes: (() {
        final guardedValue = map['hiddenAppTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hiddenInstanceTypes: (() {
        final guardedValue = map['hiddenInstanceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hiddenMlTools: (() {
        final guardedValue = map['hiddenMlTools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
