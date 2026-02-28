// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_geo.dart';
import 'record_set_routing_policy_primary_backup.dart';
import 'record_set_routing_policy_wrr.dart';

class RecordSetRoutingPolicy {
  /// Specifies whether to enable fencing for geo queries.
  final bool? enableGeoFencing;

  /// The configuration for Geolocation based routing policy.
  /// Structure is documented below.
  final List<RecordSetRoutingPolicyGeo>? geos;

  /// Specifies the health check (used with external endpoints).
  final String? healthCheck;

  /// The configuration for a failover policy with global to regional failover. Queries are responded to with the global primary targets, but if none of the primary targets are healthy, then we fallback to a regional failover policy.
  /// Structure is documented below.
  final RecordSetRoutingPolicyPrimaryBackup? primaryBackup;

  /// The configuration for Weighted Round Robin based routing policy.
  /// Structure is documented below.
  final List<RecordSetRoutingPolicyWrr>? wrrs;

  /// Creates a new [RecordSetRoutingPolicy].
  /// [enableGeoFencing] Specifies whether to enable fencing for geo queries.
  /// [geos] The configuration for Geolocation based routing policy.
  /// [healthCheck] Specifies the health check (used with external endpoints).
  /// [primaryBackup] The configuration for a failover policy with global to regional failover. Queries are responded to with the global primary targets, but if none of the primary targets are healthy, then we fallback to a regional failover policy.
  /// [wrrs] The configuration for Weighted Round Robin based routing policy.
  RecordSetRoutingPolicy({
    this.enableGeoFencing,
    this.geos,
    this.healthCheck,
    this.primaryBackup,
    this.wrrs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableGeoFencingValue = enableGeoFencing;
    if (enableGeoFencingValue != null) {
      map['enableGeoFencing'] = enableGeoFencingValue;
    }
    final geosValue = geos;
    if (geosValue != null) {
      map['geos'] = pulumi.Input.encodeList<RecordSetRoutingPolicyGeo,
          Map<String, dynamic>>(geosValue, (value) => value.toMap());
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue;
    }
    final primaryBackupValue = primaryBackup;
    if (primaryBackupValue != null) {
      map['primaryBackup'] = primaryBackupValue.toMap();
    }
    final wrrsValue = wrrs;
    if (wrrsValue != null) {
      map['wrrs'] = pulumi.Input.encodeList<RecordSetRoutingPolicyWrr,
          Map<String, dynamic>>(wrrsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RecordSetRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicy(
      enableGeoFencing: map['enableGeoFencing'] == null
          ? null
          : map['enableGeoFencing'] as bool,
      geos: map['geos'] == null
          ? null
          : pulumi.Input.decodeList<RecordSetRoutingPolicyGeo>(
              map['geos'],
              (value) => RecordSetRoutingPolicyGeo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      healthCheck:
          map['healthCheck'] == null ? null : map['healthCheck'] as String,
      primaryBackup: map['primaryBackup'] == null
          ? null
          : RecordSetRoutingPolicyPrimaryBackup.fromMap(
              (map['primaryBackup'] as Map).cast<String, dynamic>()),
      wrrs: map['wrrs'] == null
          ? null
          : pulumi.Input.decodeList<RecordSetRoutingPolicyWrr>(
              map['wrrs'],
              (value) => RecordSetRoutingPolicyWrr.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
