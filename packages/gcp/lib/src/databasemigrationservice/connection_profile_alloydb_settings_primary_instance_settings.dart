// ignore_for_file: unused_element, unnecessary_cast

import 'connection_profile_alloydb_settings_primary_instance_settings_machine_config.dart';

class ConnectionProfileAlloydbSettingsPrimaryInstanceSettings {
  /// Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  final Map<String, String>? databaseFlags;

  /// The database username.
  final String id;

  /// Labels for the AlloyDB primary instance created by DMS.
  final Map<String, String>? labels;

  /// Configuration for the machines that host the underlying database engine.
  /// Structure is documented below.
  final ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig
      machineConfig;

  /// (Output)
  /// Output only. The private IP address for the Instance. This is the connection endpoint for an end-user application.
  final String? privateIp;

  /// Creates a new [ConnectionProfileAlloydbSettingsPrimaryInstanceSettings].
  /// [databaseFlags] Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  /// [id] The database username.
  /// [labels] Labels for the AlloyDB primary instance created by DMS.
  /// [machineConfig] Configuration for the machines that host the underlying database engine.
  /// [privateIp] (Output)
  ConnectionProfileAlloydbSettingsPrimaryInstanceSettings({
    this.databaseFlags,
    required this.id,
    this.labels,
    required this.machineConfig,
    this.privateIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseFlagsValue = databaseFlags;
    if (databaseFlagsValue != null) {
      map['databaseFlags'] = databaseFlagsValue;
    }
    map['id'] = id;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['machineConfig'] = machineConfig.toMap();
    final privateIpValue = privateIp;
    if (privateIpValue != null) {
      map['privateIp'] = privateIpValue;
    }
    return map;
  }

  factory ConnectionProfileAlloydbSettingsPrimaryInstanceSettings.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettingsPrimaryInstanceSettings(
      databaseFlags: map['databaseFlags'] == null
          ? null
          : (map['databaseFlags'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineConfig:
          ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig
              .fromMap((map['machineConfig'] as Map).cast<String, dynamic>()),
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
    );
  }
}
