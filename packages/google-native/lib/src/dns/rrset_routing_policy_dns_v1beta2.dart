// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy_dns_v1beta2.dart';
import 'rrset_routing_policy_primary_backup_policy_dns_v1beta2.dart';
import 'rrset_routing_policy_wrr_policy_dns_v1beta2.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicyDnsV1beta2 {
  final RRSetRoutingPolicyGeoPolicyDnsV1beta2? geo;
  final RRSetRoutingPolicyGeoPolicyDnsV1beta2? geoPolicy;
  final String? kind;
  final RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2? primaryBackup;
  final RRSetRoutingPolicyWrrPolicyDnsV1beta2? wrr;
  final RRSetRoutingPolicyWrrPolicyDnsV1beta2? wrrPolicy;

  /// Creates a new [RRSetRoutingPolicyDnsV1beta2].
  /// [geo] Optional.
  /// [geoPolicy] Optional.
  /// [kind] Optional.
  /// [primaryBackup] Optional.
  /// [wrr] Optional.
  /// [wrrPolicy] Optional.
  RRSetRoutingPolicyDnsV1beta2({
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

  factory RRSetRoutingPolicyDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyDnsV1beta2(
      geo: map['geo'] == null
          ? null
          : RRSetRoutingPolicyGeoPolicyDnsV1beta2.fromMap(
              (map['geo'] as Map).cast<String, dynamic>()),
      geoPolicy: map['geoPolicy'] == null
          ? null
          : RRSetRoutingPolicyGeoPolicyDnsV1beta2.fromMap(
              (map['geoPolicy'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      primaryBackup: map['primaryBackup'] == null
          ? null
          : RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2.fromMap(
              (map['primaryBackup'] as Map).cast<String, dynamic>()),
      wrr: map['wrr'] == null
          ? null
          : RRSetRoutingPolicyWrrPolicyDnsV1beta2.fromMap(
              (map['wrr'] as Map).cast<String, dynamic>()),
      wrrPolicy: map['wrrPolicy'] == null
          ? null
          : RRSetRoutingPolicyWrrPolicyDnsV1beta2.fromMap(
              (map['wrrPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
