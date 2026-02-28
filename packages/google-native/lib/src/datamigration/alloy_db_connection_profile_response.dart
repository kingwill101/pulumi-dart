// ignore_for_file: unused_element, unnecessary_cast

import 'alloy_db_settings_response.dart';

/// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
class AlloyDbConnectionProfileResponse {
  /// The AlloyDB cluster ID that this connection profile is associated with.
  final String clusterId;
  /// Immutable. Metadata used to create the destination AlloyDB cluster.
  final AlloyDbSettingsResponse settings;

  /// Creates a new [AlloyDbConnectionProfileResponse].
  /// [clusterId] The AlloyDB cluster ID that this connection profile is associated with.
  /// [settings] Immutable. Metadata used to create the destination AlloyDB cluster.
  AlloyDbConnectionProfileResponse({
    required this.clusterId,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'settings': settings.toMap(),
    };
  }

  factory AlloyDbConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return AlloyDbConnectionProfileResponse(
      clusterId: map['clusterId'] as String,
      settings: AlloyDbSettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

