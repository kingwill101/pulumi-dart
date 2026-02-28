// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy.dart';
import 'rrset_routing_policy_primary_backup_policy.dart';
import 'rrset_routing_policy_wrr_policy.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicy {
  final RRSetRoutingPolicyGeoPolicy? geo;
  final String? kind;
  final RRSetRoutingPolicyPrimaryBackupPolicy? primaryBackup;
  final RRSetRoutingPolicyWrrPolicy? wrr;

  /// Creates a new [RRSetRoutingPolicy].
  /// [geo] Optional.
  /// [kind] Optional.
  /// [primaryBackup] Optional.
  /// [wrr] Optional.
  RRSetRoutingPolicy({
    this.geo,
    this.kind,
    this.primaryBackup,
    this.wrr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final geoValue = geo;
    if (geoValue != null) {
      map['geo'] = geoValue.toMap();
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final primaryBackupValue = primaryBackup;
    if (primaryBackupValue != null) {
      map['primaryBackup'] = primaryBackupValue.toMap();
    }
    final wrrValue = wrr;
    if (wrrValue != null) {
      map['wrr'] = wrrValue.toMap();
    }
    return map;
  }

  factory RRSetRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicy(
      geo: map['geo'] == null
          ? null
          : RRSetRoutingPolicyGeoPolicy.fromMap(
              (map['geo'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      primaryBackup: map['primaryBackup'] == null
          ? null
          : RRSetRoutingPolicyPrimaryBackupPolicy.fromMap(
              (map['primaryBackup'] as Map).cast<String, dynamic>()),
      wrr: map['wrr'] == null
          ? null
          : RRSetRoutingPolicyWrrPolicy.fromMap(
              (map['wrr'] as Map).cast<String, dynamic>()),
    );
  }
}
