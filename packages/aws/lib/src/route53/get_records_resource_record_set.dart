// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_resource_record_set_alias_target.dart';
import 'get_records_resource_record_set_cidr_routing_config.dart';
import 'get_records_resource_record_set_geolocation.dart';
import 'get_records_resource_record_set_geoproximity_location.dart';
import 'get_records_resource_record_set_resource_record.dart';

class GetRecordsResourceRecordSet {
  /// Information about the AWS resource traffic is routed to.
  final GetRecordsResourceRecordSetAliasTarget aliasTarget;
  /// Information about the CIDR location traffic is routed to.
  final GetRecordsResourceRecordSetCidrRoutingConfig cidrRoutingConfig;
  /// `PRIMARY` or `SECONDARY`.
  final String failover;
  /// Information about how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  final GetRecordsResourceRecordSetGeolocation geolocation;
  /// Information about how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  final GetRecordsResourceRecordSetGeoproximityLocation geoproximityLocation;
  /// ID of any applicable health check.
  final String healthCheckId;
  /// Traffic is routed approximately randomly to multiple resources.
  final bool multiValueAnswer;
  /// The name of the record.
  final String name;
  /// The Amazon EC2 Region of the resource that this resource record set refers to.
  final String region;
  /// The resource records.
  final List<GetRecordsResourceRecordSetResourceRecord> resourceRecords;
  /// An identifier that differentiates among multiple resource record sets that have the same combination of name and type.
  final String setIdentifier;
  /// The ID of any traffic policy instance that Route 53 created this resource record set for.
  final String trafficPolicyInstanceId;
  /// The resource record cache time to live (TTL), in seconds.
  final int ttl;
  /// The DNS record type.
  final String type;
  /// Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set.
  final int weight;

  /// Creates a new [GetRecordsResourceRecordSet].
  /// [aliasTarget] Information about the AWS resource traffic is routed to.
  /// [cidrRoutingConfig] Information about the CIDR location traffic is routed to.
  /// [failover] `PRIMARY` or `SECONDARY`.
  /// [geolocation] Information about how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  /// [geoproximityLocation] Information about how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  /// [healthCheckId] ID of any applicable health check.
  /// [multiValueAnswer] Traffic is routed approximately randomly to multiple resources.
  /// [name] The name of the record.
  /// [region] The Amazon EC2 Region of the resource that this resource record set refers to.
  /// [resourceRecords] The resource records.
  /// [setIdentifier] An identifier that differentiates among multiple resource record sets that have the same combination of name and type.
  /// [trafficPolicyInstanceId] The ID of any traffic policy instance that Route 53 created this resource record set for.
  /// [ttl] The resource record cache time to live (TTL), in seconds.
  /// [type] The DNS record type.
  /// [weight] Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set.
  GetRecordsResourceRecordSet({
    required this.aliasTarget,
    required this.cidrRoutingConfig,
    required this.failover,
    required this.geolocation,
    required this.geoproximityLocation,
    required this.healthCheckId,
    required this.multiValueAnswer,
    required this.name,
    required this.region,
    required this.resourceRecords,
    required this.setIdentifier,
    required this.trafficPolicyInstanceId,
    required this.ttl,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasTarget': aliasTarget.toMap(),
      'cidrRoutingConfig': cidrRoutingConfig.toMap(),
      'failover': failover,
      'geolocation': geolocation.toMap(),
      'geoproximityLocation': geoproximityLocation.toMap(),
      'healthCheckId': healthCheckId,
      'multiValueAnswer': multiValueAnswer,
      'name': name,
      'region': region,
      'resourceRecords': pulumi.Input.encodeList<GetRecordsResourceRecordSetResourceRecord, Map<String, dynamic>>(resourceRecords, (value) => value.toMap()),
      'setIdentifier': setIdentifier,
      'trafficPolicyInstanceId': trafficPolicyInstanceId,
      'ttl': ttl,
      'type': type,
      'weight': weight,
    };
  }

  factory GetRecordsResourceRecordSet.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSet(
      aliasTarget: GetRecordsResourceRecordSetAliasTarget.fromMap((map['aliasTarget'] as Map).cast<String, dynamic>()),
      cidrRoutingConfig: GetRecordsResourceRecordSetCidrRoutingConfig.fromMap((map['cidrRoutingConfig'] as Map).cast<String, dynamic>()),
      failover: map['failover'] as String,
      geolocation: GetRecordsResourceRecordSetGeolocation.fromMap((map['geolocation'] as Map).cast<String, dynamic>()),
      geoproximityLocation: GetRecordsResourceRecordSetGeoproximityLocation.fromMap((map['geoproximityLocation'] as Map).cast<String, dynamic>()),
      healthCheckId: map['healthCheckId'] as String,
      multiValueAnswer: map['multiValueAnswer'] as bool,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceRecords: pulumi.Input.decodeList<GetRecordsResourceRecordSetResourceRecord>(map['resourceRecords'], (value) => GetRecordsResourceRecordSetResourceRecord.fromMap((value as Map).cast<String, dynamic>())),
      setIdentifier: map['setIdentifier'] as String,
      trafficPolicyInstanceId: map['trafficPolicyInstanceId'] as String,
      ttl: map['ttl'] as int,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

