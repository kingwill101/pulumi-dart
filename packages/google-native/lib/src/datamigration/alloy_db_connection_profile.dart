// ignore_for_file: unused_element, unnecessary_cast

import 'alloy_db_settings.dart';

/// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
class AlloyDbConnectionProfile {
  /// The AlloyDB cluster ID that this connection profile is associated with.
  final String clusterId;

  /// Immutable. Metadata used to create the destination AlloyDB cluster.
  final AlloyDbSettings? settings;

  /// Creates a new [AlloyDbConnectionProfile].
  /// [clusterId] The AlloyDB cluster ID that this connection profile is associated with.
  /// [settings] Immutable. Metadata used to create the destination AlloyDB cluster.
  AlloyDbConnectionProfile({required this.clusterId, this.settings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory AlloyDbConnectionProfile.fromMap(Map<String, dynamic> map) {
    return AlloyDbConnectionProfile(
      clusterId: map['clusterId'] as String,
      settings: map['settings'] == null
          ? null
          : AlloyDbSettings.fromMap(
              (map['settings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
