// ignore_for_file: unused_element, unnecessary_cast

import '../connection_profile_alloydb_settings_initial_user/connection_profile_alloydb_settings_initial_user.dart';
import '../connection_profile_alloydb_settings_primary_instance_settings/connection_profile_alloydb_settings_primary_instance_settings.dart';

class ConnectionProfileAlloydbSettings {
  /// Required. Input only. Initial user to setup during cluster creation.
  /// Structure is documented below.
  final ConnectionProfileAlloydbSettingsInitialUser initialUser;

  /// Labels for the AlloyDB cluster created by DMS.
  final Map<String, String>? labels;

  /// Settings for the cluster's primary instance
  /// Structure is documented below.
  final ConnectionProfileAlloydbSettingsPrimaryInstanceSettings?
      primaryInstanceSettings;

  /// Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
  /// It is specified in the form: 'projects/{project_number}/global/networks/{network_id}'. This is required to create a cluster.
  final String vpcNetwork;

  ConnectionProfileAlloydbSettings({
    required this.initialUser,
    this.labels,
    this.primaryInstanceSettings,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['initialUser'] = initialUser.toMap();
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final primaryInstanceSettingsValue = primaryInstanceSettings;
    if (primaryInstanceSettingsValue != null) {
      map['primaryInstanceSettings'] = primaryInstanceSettingsValue.toMap();
    }
    map['vpcNetwork'] = vpcNetwork;
    return map;
  }

  factory ConnectionProfileAlloydbSettings.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettings(
      initialUser: ConnectionProfileAlloydbSettingsInitialUser.fromMap(
          (map['initialUser'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      primaryInstanceSettings: map['primaryInstanceSettings'] == null
          ? null
          : ConnectionProfileAlloydbSettingsPrimaryInstanceSettings.fromMap(
              (map['primaryInstanceSettings'] as Map).cast<String, dynamic>()),
      vpcNetwork: map['vpcNetwork'] as String,
    );
  }
}
