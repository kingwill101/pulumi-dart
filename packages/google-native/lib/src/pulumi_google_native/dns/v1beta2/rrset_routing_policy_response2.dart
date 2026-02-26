// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy_response2.dart';
import 'rrset_routing_policy_primary_backup_policy_response2.dart';
import 'rrset_routing_policy_wrr_policy_response2.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicyResponse2 {
  final RRSetRoutingPolicyGeoPolicyResponse2 geo;
  final RRSetRoutingPolicyGeoPolicyResponse2 geoPolicy;
  final String kind;
  final RRSetRoutingPolicyPrimaryBackupPolicyResponse2 primaryBackup;
  final RRSetRoutingPolicyWrrPolicyResponse2 wrr;
  final RRSetRoutingPolicyWrrPolicyResponse2 wrrPolicy;

  RRSetRoutingPolicyResponse2({
    required this.geo,
    required this.geoPolicy,
    required this.kind,
    required this.primaryBackup,
    required this.wrr,
    required this.wrrPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['geo'] = geo.toMap();
    map['geoPolicy'] = geoPolicy.toMap();
    map['kind'] = kind;
    map['primaryBackup'] = primaryBackup.toMap();
    map['wrr'] = wrr.toMap();
    map['wrrPolicy'] = wrrPolicy.toMap();
    return map;
  }

  factory RRSetRoutingPolicyResponse2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyResponse2(
      geo: RRSetRoutingPolicyGeoPolicyResponse2.fromMap(
          (map['geo'] as Map).cast<String, dynamic>()),
      geoPolicy: RRSetRoutingPolicyGeoPolicyResponse2.fromMap(
          (map['geoPolicy'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      primaryBackup: RRSetRoutingPolicyPrimaryBackupPolicyResponse2.fromMap(
          (map['primaryBackup'] as Map).cast<String, dynamic>()),
      wrr: RRSetRoutingPolicyWrrPolicyResponse2.fromMap(
          (map['wrr'] as Map).cast<String, dynamic>()),
      wrrPolicy: RRSetRoutingPolicyWrrPolicyResponse2.fromMap(
          (map['wrrPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
