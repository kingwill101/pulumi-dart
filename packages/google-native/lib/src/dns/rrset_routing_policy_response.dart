// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy_response.dart';
import 'rrset_routing_policy_primary_backup_policy_response.dart';
import 'rrset_routing_policy_wrr_policy_response.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicyResponse {
  final RRSetRoutingPolicyGeoPolicyResponse geo;
  final String kind;
  final RRSetRoutingPolicyPrimaryBackupPolicyResponse primaryBackup;
  final RRSetRoutingPolicyWrrPolicyResponse wrr;

  /// Creates a new [RRSetRoutingPolicyResponse].
  /// [geo] Required.
  /// [kind] Required.
  /// [primaryBackup] Required.
  /// [wrr] Required.
  RRSetRoutingPolicyResponse({
    required this.geo,
    required this.kind,
    required this.primaryBackup,
    required this.wrr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['geo'] = geo.toMap();
    map['kind'] = kind;
    map['primaryBackup'] = primaryBackup.toMap();
    map['wrr'] = wrr.toMap();
    return map;
  }

  factory RRSetRoutingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyResponse(
      geo: RRSetRoutingPolicyGeoPolicyResponse.fromMap(
          (map['geo'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      primaryBackup: RRSetRoutingPolicyPrimaryBackupPolicyResponse.fromMap(
          (map['primaryBackup'] as Map).cast<String, dynamic>()),
      wrr: RRSetRoutingPolicyWrrPolicyResponse.fromMap(
          (map['wrr'] as Map).cast<String, dynamic>()),
    );
  }
}
