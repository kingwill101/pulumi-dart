// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_resource_record_set_alias_target.dart';
import 'get_records_resource_record_set_cidr_routing_config.dart';
import 'get_records_resource_record_set_geolocation.dart';
import 'get_records_resource_record_set_geoproximity_location.dart';
import 'get_records_resource_record_set_resource_record.dart';

class GetRecordsResourceRecordSet {
  /// Information about the AWS resource traffic is routed to.
  final pulumi.Input<GetRecordsResourceRecordSetAliasTarget> aliasTarget;

  /// Information about the CIDR location traffic is routed to.
  final pulumi.Input<GetRecordsResourceRecordSetCidrRoutingConfig>
  cidrRoutingConfig;

  /// `PRIMARY` or `SECONDARY`.
  final pulumi.Input<String> failover;

  /// Information about how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  final pulumi.Input<GetRecordsResourceRecordSetGeolocation> geolocation;

  /// Information about how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  final pulumi.Input<GetRecordsResourceRecordSetGeoproximityLocation>
  geoproximityLocation;

  /// ID of any applicable health check.
  final pulumi.Input<String> healthCheckId;

  /// Traffic is routed approximately randomly to multiple resources.
  final pulumi.Input<bool> multiValueAnswer;

  /// The name of the record.
  final pulumi.Input<String> name;

  /// The Amazon EC2 Region of the resource that this resource record set refers to.
  final pulumi.Input<String> region;

  /// The resource records.
  final pulumi.Input<List<GetRecordsResourceRecordSetResourceRecord>>
  resourceRecords;

  /// An identifier that differentiates among multiple resource record sets that have the same combination of name and type.
  final pulumi.Input<String> setIdentifier;

  /// The ID of any traffic policy instance that Route 53 created this resource record set for.
  final pulumi.Input<String> trafficPolicyInstanceId;

  /// The resource record cache time to live (TTL), in seconds.
  final pulumi.Input<int> ttl;

  /// The DNS record type.
  final pulumi.Input<String> type;

  /// Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set.
  final pulumi.Input<int> weight;

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
      'aliasTarget':
          pulumi.Input.mapInputValue<
            GetRecordsResourceRecordSetAliasTarget,
            Map<String, dynamic>
          >(aliasTarget, (value) => value.toMap()),
      'cidrRoutingConfig':
          pulumi.Input.mapInputValue<
            GetRecordsResourceRecordSetCidrRoutingConfig,
            Map<String, dynamic>
          >(cidrRoutingConfig, (value) => value.toMap()),
      'failover': failover,
      'geolocation':
          pulumi.Input.mapInputValue<
            GetRecordsResourceRecordSetGeolocation,
            Map<String, dynamic>
          >(geolocation, (value) => value.toMap()),
      'geoproximityLocation':
          pulumi.Input.mapInputValue<
            GetRecordsResourceRecordSetGeoproximityLocation,
            Map<String, dynamic>
          >(geoproximityLocation, (value) => value.toMap()),
      'healthCheckId': healthCheckId,
      'multiValueAnswer': multiValueAnswer,
      'name': name,
      'region': region,
      'resourceRecords':
          pulumi.Input.mapInputValue<
            List<GetRecordsResourceRecordSetResourceRecord>,
            List<Map<String, dynamic>>
          >(
            resourceRecords,
            (value) =>
                pulumi.Input.encodeList<
                  GetRecordsResourceRecordSetResourceRecord,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'setIdentifier': setIdentifier,
      'trafficPolicyInstanceId': trafficPolicyInstanceId,
      'ttl': ttl,
      'type': type,
      'weight': weight,
    };
  }

  factory GetRecordsResourceRecordSet.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSet(
      aliasTarget: pulumi.Input.fromValue(
        GetRecordsResourceRecordSetAliasTarget.fromMap(
          (map['aliasTarget']! as Map).cast<String, dynamic>(),
        ),
      ),
      cidrRoutingConfig: pulumi.Input.fromValue(
        GetRecordsResourceRecordSetCidrRoutingConfig.fromMap(
          (map['cidrRoutingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      failover: pulumi.Input.fromValue(map['failover'] as String),
      geolocation: pulumi.Input.fromValue(
        GetRecordsResourceRecordSetGeolocation.fromMap(
          (map['geolocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      geoproximityLocation: pulumi.Input.fromValue(
        GetRecordsResourceRecordSetGeoproximityLocation.fromMap(
          (map['geoproximityLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      healthCheckId: pulumi.Input.fromValue(map['healthCheckId'] as String),
      multiValueAnswer: pulumi.Input.fromValue(map['multiValueAnswer'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      resourceRecords: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRecordsResourceRecordSetResourceRecord>(
          map['resourceRecords']!,
          (value) => GetRecordsResourceRecordSetResourceRecord.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      setIdentifier: pulumi.Input.fromValue(map['setIdentifier'] as String),
      trafficPolicyInstanceId: pulumi.Input.fromValue(
        map['trafficPolicyInstanceId'] as String,
      ),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
