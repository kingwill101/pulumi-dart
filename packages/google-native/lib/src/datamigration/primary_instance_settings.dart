// ignore_for_file: unused_element, unnecessary_cast

import 'machine_config.dart';

/// Settings for the cluster's primary instance
class PrimaryInstanceSettings {
  /// Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  final Map<String, String>? databaseFlags;

  /// The ID of the AlloyDB primary instance. The ID must satisfy the regex expression "[a-z0-9-]+".
  final String id;

  /// Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'value' pairs.
  final Map<String, String>? labels;

  /// Configuration for the machines that host the underlying database engine.
  final MachineConfig? machineConfig;

  /// Creates a new [PrimaryInstanceSettings].
  /// [databaseFlags] Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  /// [id] The ID of the AlloyDB primary instance. The ID must satisfy the regex expression "[a-z0-9-]+".
  /// [labels] Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'value' pairs.
  /// [machineConfig] Configuration for the machines that host the underlying database engine.
  PrimaryInstanceSettings({
    this.databaseFlags,
    required this.id,
    this.labels,
    this.machineConfig,
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
    final machineConfigValue = machineConfig;
    if (machineConfigValue != null) {
      map['machineConfig'] = machineConfigValue.toMap();
    }
    return map;
  }

  factory PrimaryInstanceSettings.fromMap(Map<String, dynamic> map) {
    return PrimaryInstanceSettings(
      databaseFlags: map['databaseFlags'] == null
          ? null
          : (map['databaseFlags'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineConfig: map['machineConfig'] == null
          ? null
          : MachineConfig.fromMap(
              (map['machineConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
