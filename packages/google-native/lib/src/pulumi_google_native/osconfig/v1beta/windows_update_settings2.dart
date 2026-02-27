// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'windows_update_settings_classifications_item2.dart';

/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettings2 {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  final List<WindowsUpdateSettingsClassificationsItem2>? classifications;

  /// List of KBs to exclude from update.
  final List<String>? excludes;

  /// An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  final List<String>? exclusivePatches;

  WindowsUpdateSettings2({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classificationsValue = classifications;
    if (classificationsValue != null) {
      map['classifications'] =
          Input.encodeList<WindowsUpdateSettingsClassificationsItem2, String>(
              classificationsValue, (value) => value.value);
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

  factory WindowsUpdateSettings2.fromMap(Map<String, dynamic> map) {
    return WindowsUpdateSettings2(
      classifications: map['classifications'] == null
          ? null
          : Input.decodeList<WindowsUpdateSettingsClassificationsItem2>(
              map['classifications'],
              (value) => WindowsUpdateSettingsClassificationsItem2.fromValue(
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
