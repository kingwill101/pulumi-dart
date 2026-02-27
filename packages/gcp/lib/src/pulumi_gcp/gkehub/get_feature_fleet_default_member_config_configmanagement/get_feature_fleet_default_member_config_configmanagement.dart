// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_feature_fleet_default_member_config_configmanagement_config_sync/get_feature_fleet_default_member_config_configmanagement_config_sync.dart';

class GetFeatureFleetDefaultMemberConfigConfigmanagement {
  /// ConfigSync configuration for the cluster
  final List<GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync>
      configSyncs;

  /// Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync auto-upgrades, and set this field to MANAGEMENT_MANUAL or MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades. Possible values: ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
  final String management;

  /// Version of Config Sync installed
  final String version;

  GetFeatureFleetDefaultMemberConfigConfigmanagement({
    required this.configSyncs,
    required this.management,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configSyncs'] = pulumi.Input.encodeList<
        GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync,
        Map<String, dynamic>>(configSyncs, (value) => value.toMap());
    map['management'] = management;
    map['version'] = version;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigConfigmanagement.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigConfigmanagement(
      configSyncs: pulumi.Input.decodeList<
              GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync>(
          map['configSyncs'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigConfigmanagementConfigSync
                  .fromMap((value as Map).cast<String, dynamic>())),
      management: map['management'] as String,
      version: map['version'] as String,
    );
  }
}
