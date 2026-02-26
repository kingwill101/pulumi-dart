// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../record_set_routing_policy_primary_backup_backup_geo/record_set_routing_policy_primary_backup_backup_geo.dart';
import '../record_set_routing_policy_primary_backup_primary/record_set_routing_policy_primary_backup_primary.dart';

class RecordSetRoutingPolicyPrimaryBackup {
  /// The backup geo targets, which provide a regional failover policy for the otherwise global primary targets.
  /// Structure is document above.
  final List<RecordSetRoutingPolicyPrimaryBackupBackupGeo> backupGeos;

  /// Specifies whether to enable fencing for backup geo queries.
  final bool? enableGeoFencingForBackups;

  /// The list of global primary targets to be health checked.
  /// Structure is documented below.
  final RecordSetRoutingPolicyPrimaryBackupPrimary primary;

  /// Specifies the percentage of traffic to send to the backup targets even when the primary targets are healthy.
  final double? trickleRatio;

  RecordSetRoutingPolicyPrimaryBackup({
    required this.backupGeos,
    this.enableGeoFencingForBackups,
    required this.primary,
    this.trickleRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupGeos'] = Input.encodeList<
        RecordSetRoutingPolicyPrimaryBackupBackupGeo,
        Map<String, dynamic>>(backupGeos, (value) => value.toMap());
    final enableGeoFencingForBackupsValue = enableGeoFencingForBackups;
    if (enableGeoFencingForBackupsValue != null) {
      map['enableGeoFencingForBackups'] = enableGeoFencingForBackupsValue;
    }
    map['primary'] = primary.toMap();
    final trickleRatioValue = trickleRatio;
    if (trickleRatioValue != null) {
      map['trickleRatio'] = trickleRatioValue;
    }
    return map;
  }

  factory RecordSetRoutingPolicyPrimaryBackup.fromMap(
      Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackup(
      backupGeos:
          Input.decodeList<RecordSetRoutingPolicyPrimaryBackupBackupGeo>(
              map['backupGeos'],
              (value) => RecordSetRoutingPolicyPrimaryBackupBackupGeo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableGeoFencingForBackups: map['enableGeoFencingForBackups'] == null
          ? null
          : map['enableGeoFencingForBackups'] as bool,
      primary: RecordSetRoutingPolicyPrimaryBackupPrimary.fromMap(
          (map['primary'] as Map).cast<String, dynamic>()),
      trickleRatio:
          map['trickleRatio'] == null ? null : map['trickleRatio'] as double,
    );
  }
}
