// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_update_settings_classifications_item.dart';

/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettings {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  final List<WindowsUpdateSettingsClassificationsItem>? classifications;

  /// List of KBs to exclude from update.
  final List<String>? excludes;

  /// An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  final List<String>? exclusivePatches;

  /// Creates a new [WindowsUpdateSettings].
  /// [classifications] Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// [excludes] List of KBs to exclude from update.
  /// [exclusivePatches] An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  WindowsUpdateSettings({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classificationsValue = classifications;
    if (classificationsValue != null) {
      map['classifications'] = pulumi.Input.encodeList<
          WindowsUpdateSettingsClassificationsItem,
          String>(classificationsValue, (value) => value.value);
    }
    final excludesValue = excludes;
    if (excludesValue != null) {
      map['excludes'] = excludesValue;
    }
    final exclusivePatchesValue = exclusivePatches;
    if (exclusivePatchesValue != null) {
      map['exclusivePatches'] = exclusivePatchesValue;
    }
    return map;
  }

  factory WindowsUpdateSettings.fromMap(Map<String, dynamic> map) {
    return WindowsUpdateSettings(
      classifications: map['classifications'] == null
          ? null
          : pulumi.Input.decodeList<WindowsUpdateSettingsClassificationsItem>(
              map['classifications'],
              (value) => WindowsUpdateSettingsClassificationsItem.fromValue(
                  value as String)),
      excludes: map['excludes'] == null
          ? null
          : (map['excludes'] as List).cast<String>(),
      exclusivePatches: map['exclusivePatches'] == null
          ? null
          : (map['exclusivePatches'] as List).cast<String>(),
    );
  }
}
