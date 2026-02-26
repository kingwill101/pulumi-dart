// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy2.dart';
import 'rrset_routing_policy_primary_backup_policy2.dart';
import 'rrset_routing_policy_wrr_policy2.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicy2 {
  final RRSetRoutingPolicyGeoPolicy2? geo;
  final RRSetRoutingPolicyGeoPolicy2? geoPolicy;
  final String? kind;
  final RRSetRoutingPolicyPrimaryBackupPolicy2? primaryBackup;
  final RRSetRoutingPolicyWrrPolicy2? wrr;
  final RRSetRoutingPolicyWrrPolicy2? wrrPolicy;

  RRSetRoutingPolicy2({
    this.geo,
    this.geoPolicy,
    this.kind,
    this.primaryBackup,
    this.wrr,
    this.wrrPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final geoValue = geo;
    if (geoValue != null) {
      map['geo'] = geoValue.toMap();
    }
    final geoPolicyValue = geoPolicy;
    if (geoPolicyValue != null) {
      map['geoPolicy'] = geoPolicyValue.toMap();
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
    final wrrPolicyValue = wrrPolicy;
    if (wrrPolicyValue != null) {
      map['wrrPolicy'] = wrrPolicyValue.toMap();
    }
    return map;
  }

  factory RRSetRoutingPolicy2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicy2(
      geo: map['geo'] == null
          ? null
          : RRSetRoutingPolicyGeoPolicy2.fromMap(
              (map['geo'] as Map).cast<String, dynamic>()),
      geoPolicy: map['geoPolicy'] == null
          ? null
          : RRSetRoutingPolicyGeoPolicy2.fromMap(
              (map['geoPolicy'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      primaryBackup: map['primaryBackup'] == null
          ? null
          : RRSetRoutingPolicyPrimaryBackupPolicy2.fromMap(
              (map['primaryBackup'] as Map).cast<String, dynamic>()),
      wrr: map['wrr'] == null
          ? null
          : RRSetRoutingPolicyWrrPolicy2.fromMap(
              (map['wrr'] as Map).cast<String, dynamic>()),
      wrrPolicy: map['wrrPolicy'] == null
          ? null
          : RRSetRoutingPolicyWrrPolicy2.fromMap(
              (map['wrrPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
