// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../node_group_share_settings_project_map/node_group_share_settings_project_map.dart';

class NodeGroupShareSettings {
  /// A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// Structure is documented below.
  final List<NodeGroupShareSettingsProjectMap>? projectMaps;

  /// Node group sharing type.
  /// Possible values are: `ORGANIZATION`, `SPECIFIC_PROJECTS`, `LOCAL`.
  final String shareType;

  NodeGroupShareSettings({
    this.projectMaps,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectMapsValue = projectMaps;
    if (projectMapsValue != null) {
      map['projectMaps'] = Input.encodeList<NodeGroupShareSettingsProjectMap,
          Map<String, dynamic>>(projectMapsValue, (value) => value.toMap());
    }
    map['shareType'] = shareType;
    return map;
  }

  factory NodeGroupShareSettings.fromMap(Map<String, dynamic> map) {
    return NodeGroupShareSettings(
      projectMaps: map['projectMaps'] == null
          ? null
          : Input.decodeList<NodeGroupShareSettingsProjectMap>(
              map['projectMaps'],
              (value) => NodeGroupShareSettingsProjectMap.fromMap(
                  (value as Map).cast<String, dynamic>())),
      shareType: map['shareType'] as String,
    );
  }
}
