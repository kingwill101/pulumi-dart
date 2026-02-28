// ignore_for_file: unused_element, unnecessary_cast

import 'connection_profile_alloydb_settings.dart';

class ConnectionProfileAlloydb {
  /// Required. The AlloyDB cluster ID that this connection profile is associated with.
  final String clusterId;

  /// Immutable. Metadata used to create the destination AlloyDB cluster.
  /// Structure is documented below.
  final ConnectionProfileAlloydbSettings? settings;

  /// Creates a new [ConnectionProfileAlloydb].
  /// [clusterId] Required. The AlloyDB cluster ID that this connection profile is associated with.
  /// [settings] Immutable. Metadata used to create the destination AlloyDB cluster.
  ConnectionProfileAlloydb({
    required this.clusterId,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = settingsValue.toMap();
    }
    return map;
  }

  factory ConnectionProfileAlloydb.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileAlloydb(
      clusterId: map['clusterId'] as String,
      settings: map['settings'] == null
          ? null
          : ConnectionProfileAlloydbSettings.fromMap(
              (map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}
