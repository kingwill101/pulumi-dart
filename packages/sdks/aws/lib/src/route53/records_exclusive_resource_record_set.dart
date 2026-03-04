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
  final pulumi.Input<RecordsExclusiveResourceRecordSetAliasTarget>? aliasTarget;
  final pulumi.Input<RecordsExclusiveResourceRecordSetCidrRoutingConfig>?
  cidrRoutingConfig;

  /// Type of failover resource record.
  /// Valid values are `PRIMARY` and `SECONDARY`.
  /// See the [AWS documentation on DNS failover](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html) for additional details.
  final pulumi.Input<String>? failover;

  /// Geolocation block to control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  /// See `geolocation` below.
  final pulumi.Input<RecordsExclusiveResourceRecordSetGeolocation>? geolocation;

  /// Geoproximity location block.
  /// See `geoproximity_location` below.
  final pulumi.Input<RecordsExclusiveResourceRecordSetGeoproximityLocation>?
  geoproximityLocation;

  /// Health check the record should be associated with.
  final pulumi.Input<String>? healthCheckId;
  final pulumi.Input<bool>? multiValueAnswer;

  /// Name of the record.
  final pulumi.Input<String> name;

  /// AWS region of the resource this record set refers to.
  /// Must be a valid AWS region name.
  /// See the [AWS documentation](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latency) on latency based routing for additional details.
  final pulumi.Input<String>? region;

  /// Information about the resource records to act upon.
  /// See `resource_records` below.
  final pulumi.Input<List<RecordsExclusiveResourceRecordSetResourceRecord>>?
  resourceRecords;

  /// An identifier that differentiates among multiple resource record sets that have the same combination of name and type.
  /// Required if using `cidr_routing_config`, `failover`, `geolocation`,`geoproximity_location`, `multivalue_answer`, `region`, or `weight`.
  final pulumi.Input<String>? setIdentifier;

  /// ID of the traffic policy instance that Route 53 created this resource record set for.
  /// To delete the resource record set that is associated with a traffic policy instance, use the `DeleteTrafficPolicyInstance` API.
  /// Route 53 will delete the resource record set automatically.
  /// If the resource record set is deleted via `ChangeResourceRecordSets` (the API underpinning this Terraform resource), Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it.
  final pulumi.Input<String>? trafficPolicyInstanceId;

  /// Resource record cache time to live (TTL), in seconds.
  final pulumi.Input<int>? ttl;

  /// Record type.
  /// Valid values are `A`, `AAAA`, `CAA`, `CNAME`, `DS`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `TXT`, `TLSA`, `SSHFP`, `SVCB`, and `HTTPS`.
  ///
  /// The following arguments are optional:
  ///
  /// &gt; Exactly one of `resource_records` or `alias_target` must be specified.
  final pulumi.Input<String>? type;

  /// Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set.
  final pulumi.Input<int>? weight;

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
      'aliasTarget':
          ?pulumi.Input.mapOptionalInputValue<
            RecordsExclusiveResourceRecordSetAliasTarget,
            Map<String, dynamic>
          >(aliasTarget, (value) => value.toMap()),
      'cidrRoutingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RecordsExclusiveResourceRecordSetCidrRoutingConfig,
            Map<String, dynamic>
          >(cidrRoutingConfig, (value) => value.toMap()),
      'failover': ?failover,
      'geolocation':
          ?pulumi.Input.mapOptionalInputValue<
            RecordsExclusiveResourceRecordSetGeolocation,
            Map<String, dynamic>
          >(geolocation, (value) => value.toMap()),
      'geoproximityLocation':
          ?pulumi.Input.mapOptionalInputValue<
            RecordsExclusiveResourceRecordSetGeoproximityLocation,
            Map<String, dynamic>
          >(geoproximityLocation, (value) => value.toMap()),
      'healthCheckId': ?healthCheckId,
      'multiValueAnswer': ?multiValueAnswer,
      'name': name,
      'region': ?region,
      'resourceRecords':
          ?pulumi.Input.mapOptionalInputValue<
            List<RecordsExclusiveResourceRecordSetResourceRecord>,
            List<Map<String, dynamic>>
          >(
            resourceRecords,
            (value) =>
                pulumi.Input.encodeList<
                  RecordsExclusiveResourceRecordSetResourceRecord,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'setIdentifier': ?setIdentifier,
      'trafficPolicyInstanceId': ?trafficPolicyInstanceId,
      'ttl': ?ttl,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory RecordsExclusiveResourceRecordSet.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSet(
      aliasTarget: (() {
        final guardedValue = map['aliasTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecordsExclusiveResourceRecordSetAliasTarget.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cidrRoutingConfig: (() {
        final guardedValue = map['cidrRoutingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecordsExclusiveResourceRecordSetCidrRoutingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      failover: (() {
        final guardedValue = map['failover'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      geolocation: (() {
        final guardedValue = map['geolocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecordsExclusiveResourceRecordSetGeolocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      geoproximityLocation: (() {
        final guardedValue = map['geoproximityLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecordsExclusiveResourceRecordSetGeoproximityLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      healthCheckId: (() {
        final guardedValue = map['healthCheckId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiValueAnswer: (() {
        final guardedValue = map['multiValueAnswer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceRecords: (() {
        final guardedValue = map['resourceRecords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RecordsExclusiveResourceRecordSetResourceRecord
          >(
            guardedValue,
            (value) => RecordsExclusiveResourceRecordSetResourceRecord.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      setIdentifier: (() {
        final guardedValue = map['setIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficPolicyInstanceId: (() {
        final guardedValue = map['trafficPolicyInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
