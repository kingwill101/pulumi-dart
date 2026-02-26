// ignore_for_file: unused_element, unnecessary_cast

import 'alloy_db_settings.dart';

/// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
class AlloyDbConnectionProfile {
  /// The AlloyDB cluster ID that this connection profile is associated with.
  final String clusterId;

  /// Immutable. Metadata used to create the destination AlloyDB cluster.
  final AlloyDbSettings? settings;

  AlloyDbConnectionProfile({
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

  factory AlloyDbConnectionProfile.fromMap(Map<String, dynamic> map) {
    return AlloyDbConnectionProfile(
      clusterId: map['clusterId'] as String,
      settings: map['settings'] == null
          ? null
          : AlloyDbSettings.fromMap(
              (map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}
