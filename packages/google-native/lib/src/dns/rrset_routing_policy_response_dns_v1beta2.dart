// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy_response_dns_v1beta2.dart';
import 'rrset_routing_policy_primary_backup_policy_response_dns_v1beta2.dart';
import 'rrset_routing_policy_wrr_policy_response_dns_v1beta2.dart';

/// A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.
class RRSetRoutingPolicyResponseDnsV1beta2 {
  final RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2 geo;
  final RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2 geoPolicy;
  final String kind;
  final RRSetRoutingPolicyPrimaryBackupPolicyResponseDnsV1beta2 primaryBackup;
  final RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2 wrr;
  final RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2 wrrPolicy;

  /// Creates a new [RRSetRoutingPolicyResponseDnsV1beta2].
  /// [geo] Required.
  /// [geoPolicy] Required.
  /// [kind] Required.
  /// [primaryBackup] Required.
  /// [wrr] Required.
  /// [wrrPolicy] Required.
  RRSetRoutingPolicyResponseDnsV1beta2({
    required this.geo,
    required this.geoPolicy,
    required this.kind,
    required this.primaryBackup,
    required this.wrr,
    required this.wrrPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geo': geo.toMap(),
      'geoPolicy': geoPolicy.toMap(),
      'kind': kind,
      'primaryBackup': primaryBackup.toMap(),
      'wrr': wrr.toMap(),
      'wrrPolicy': wrrPolicy.toMap(),
    };
  }

  factory RRSetRoutingPolicyResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyResponseDnsV1beta2(
      geo: RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2.fromMap((map['geo'] as Map).cast<String, dynamic>()),
      geoPolicy: RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2.fromMap((map['geoPolicy'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      primaryBackup: RRSetRoutingPolicyPrimaryBackupPolicyResponseDnsV1beta2.fromMap((map['primaryBackup'] as Map).cast<String, dynamic>()),
      wrr: RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2.fromMap((map['wrr'] as Map).cast<String, dynamic>()),
      wrrPolicy: RRSetRoutingPolicyWrrPolicyResponseDnsV1beta2.fromMap((map['wrrPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

