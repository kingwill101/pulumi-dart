// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'records_exclusive_resource_record_set_alias_target.dart';
import 'records_exclusive_resource_record_set_cidr_routing_config.dart';
import 'records_exclusive_resource_record_set_geolocation.dart';
import 'records_exclusive_resource_record_set_geoproximity_location.dart';
import 'records_exclusive_resource_record_set_resource_record.dart';

class RecordsExclusiveResourceRecordSet {
  /// Alias target block.
  /// See `alias_target` below.
  final RecordsExclusiveResourceRecordSetAliasTarget? aliasTarget;
  final RecordsExclusiveResourceRecordSetCidrRoutingConfig? cidrRoutingConfig;
  /// Type of failover resource record.
  /// Valid values are `PRIMARY` and `SECONDARY`.
  /// See the [AWS documentation on DNS failover](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html) for additional details.
  final String? failover;
  /// Geolocation block to control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  /// See `geolocation` below.
  final RecordsExclusiveResourceRecordSetGeolocation? geolocation;
  /// Geoproximity location block.
  /// See `geoproximity_location` below.
  final RecordsExclusiveResourceRecordSetGeoproximityLocation? geoproximityLocation;
  /// Health check the record should be associated with.
  final String? healthCheckId;
  final bool? multiValueAnswer;
  /// Name of the record.
  final String name;
  /// AWS region of the resource this record set refers to.
  /// Must be a valid AWS region name.
  /// See the [AWS documentation](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latency) on latency based routing for additional details.
  final String? region;
  /// Information about the resource records to act upon.
  /// See `resource_records` below.
  final List<RecordsExclusiveResourceRecordSetResourceRecord>? resourceRecords;
  /// An identifier that differentiates among multiple resource record sets that have the same combination of name and type.
  /// Required if using `cidr_routing_config`, `failover`, `geolocation`,`geoproximity_location`, `multivalue_answer`, `region`, or `weight`.
  final String? setIdentifier;
  /// ID of the traffic policy instance that Route 53 created this resource record set for.
  /// To delete the resource record set that is associated with a traffic policy instance, use the `DeleteTrafficPolicyInstance` API.
  /// Route 53 will delete the resource record set automatically.
  /// If the resource record set is deleted via `ChangeResourceRecordSets` (the API underpinning this Terraform resource), Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it.
  final String? trafficPolicyInstanceId;
  /// Resource record cache time to live (TTL), in seconds.
  final int? ttl;
  /// Record type.
  /// Valid values are `A`, `AAAA`, `CAA`, `CNAME`, `DS`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `TXT`, `TLSA`, `SSHFP`, `SVCB`, and `HTTPS`.
  ///
  /// The following arguments are optional:
  ///
  /// > Exactly one of `resource_records` or `alias_target` must be specified.
  final String? type;
  /// Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set.
  final int? weight;

  /// Creates a new [RecordsExclusiveResourceRecordSet].
  /// [aliasTarget] Alias target block.
  /// [cidrRoutingConfig] Optional.
  /// [failover] Type of failover resource record.
  /// [geolocation] Geolocation block to control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  /// [geoproximityLocation] Geoproximity location block.
  /// [healthCheckId] Health check the record should be associated with.
  /// [multiValueAnswer] Optional.
  /// [name] Name of the record.
  /// [region] AWS region of the resource this record set refers to.
  /// [resourceRecords] Information about the resource records to act upon.
  /// [setIdentifier] An identifier that differentiates among multiple resource record sets that have the same combination of name and type.
  /// [trafficPolicyInstanceId] ID of the traffic policy instance that Route 53 created this resource record set for.
  /// [ttl] Resource record cache time to live (TTL), in seconds.
  /// [type] Record type.
  /// [weight] Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set.
  RecordsExclusiveResourceRecordSet({
    this.aliasTarget,
    this.cidrRoutingConfig,
    this.failover,
    this.geolocation,
    this.geoproximityLocation,
    this.healthCheckId,
    this.multiValueAnswer,
    required this.name,
    this.region,
    this.resourceRecords,
    this.setIdentifier,
    this.trafficPolicyInstanceId,
    this.ttl,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasTarget': ?aliasTarget == null ? null : aliasTarget!.toMap(),
      'cidrRoutingConfig': ?cidrRoutingConfig == null ? null : cidrRoutingConfig!.toMap(),
      'failover': ?failover,
      'geolocation': ?geolocation == null ? null : geolocation!.toMap(),
      'geoproximityLocation': ?geoproximityLocation == null ? null : geoproximityLocation!.toMap(),
      'healthCheckId': ?healthCheckId,
      'multiValueAnswer': ?multiValueAnswer,
      'name': name,
      'region': ?region,
      'resourceRecords': ?resourceRecords == null ? null : pulumi.Input.encodeList<RecordsExclusiveResourceRecordSetResourceRecord, Map<String, dynamic>>(resourceRecords!, (value) => value.toMap()),
      'setIdentifier': ?setIdentifier,
      'trafficPolicyInstanceId': ?trafficPolicyInstanceId,
      'ttl': ?ttl,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory RecordsExclusiveResourceRecordSet.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSet(
      aliasTarget: map['aliasTarget'] == null ? null : RecordsExclusiveResourceRecordSetAliasTarget.fromMap((map['aliasTarget'] as Map).cast<String, dynamic>()),
      cidrRoutingConfig: map['cidrRoutingConfig'] == null ? null : RecordsExclusiveResourceRecordSetCidrRoutingConfig.fromMap((map['cidrRoutingConfig'] as Map).cast<String, dynamic>()),
      failover: map['failover'] == null ? null : map['failover'] as String,
      geolocation: map['geolocation'] == null ? null : RecordsExclusiveResourceRecordSetGeolocation.fromMap((map['geolocation'] as Map).cast<String, dynamic>()),
      geoproximityLocation: map['geoproximityLocation'] == null ? null : RecordsExclusiveResourceRecordSetGeoproximityLocation.fromMap((map['geoproximityLocation'] as Map).cast<String, dynamic>()),
      healthCheckId: map['healthCheckId'] == null ? null : map['healthCheckId'] as String,
      multiValueAnswer: map['multiValueAnswer'] == null ? null : map['multiValueAnswer'] as bool,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceRecords: map['resourceRecords'] == null ? null : pulumi.Input.decodeList<RecordsExclusiveResourceRecordSetResourceRecord>(map['resourceRecords'], (value) => RecordsExclusiveResourceRecordSetResourceRecord.fromMap((value as Map).cast<String, dynamic>())),
      setIdentifier: map['setIdentifier'] == null ? null : map['setIdentifier'] as String,
      trafficPolicyInstanceId: map['trafficPolicyInstanceId'] == null ? null : map['trafficPolicyInstanceId'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

