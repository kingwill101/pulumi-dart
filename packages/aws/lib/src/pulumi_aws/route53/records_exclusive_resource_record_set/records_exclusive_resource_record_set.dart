// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../records_exclusive_resource_record_set_alias_target/records_exclusive_resource_record_set_alias_target.dart';
import '../records_exclusive_resource_record_set_cidr_routing_config/records_exclusive_resource_record_set_cidr_routing_config.dart';
import '../records_exclusive_resource_record_set_geolocation/records_exclusive_resource_record_set_geolocation.dart';
import '../records_exclusive_resource_record_set_geoproximity_location/records_exclusive_resource_record_set_geoproximity_location.dart';
import '../records_exclusive_resource_record_set_resource_record/records_exclusive_resource_record_set_resource_record.dart';

class RecordsExclusiveResourceRecordSet {
  /// Alias target block.
  /// See <span pulumi-lang-nodejs="`aliasTarget`" pulumi-lang-dotnet="`AliasTarget`" pulumi-lang-go="`aliasTarget`" pulumi-lang-python="`alias_target`" pulumi-lang-yaml="`aliasTarget`" pulumi-lang-java="`aliasTarget`">`alias_target`</span> below.
  final RecordsExclusiveResourceRecordSetAliasTarget? aliasTarget;
  final RecordsExclusiveResourceRecordSetCidrRoutingConfig? cidrRoutingConfig;

  /// Type of failover resource record.
  /// Valid values are `PRIMARY` and `SECONDARY`.
  /// See the [AWS documentation on DNS failover](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html) for additional details.
  final String? failover;

  /// Geolocation block to control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query.
  /// See <span pulumi-lang-nodejs="`geolocation`" pulumi-lang-dotnet="`Geolocation`" pulumi-lang-go="`geolocation`" pulumi-lang-python="`geolocation`" pulumi-lang-yaml="`geolocation`" pulumi-lang-java="`geolocation`">`geolocation`</span> below.
  final RecordsExclusiveResourceRecordSetGeolocation? geolocation;

  /// Geoproximity location block.
  /// See <span pulumi-lang-nodejs="`geoproximityLocation`" pulumi-lang-dotnet="`GeoproximityLocation`" pulumi-lang-go="`geoproximityLocation`" pulumi-lang-python="`geoproximity_location`" pulumi-lang-yaml="`geoproximityLocation`" pulumi-lang-java="`geoproximityLocation`">`geoproximity_location`</span> below.
  final RecordsExclusiveResourceRecordSetGeoproximityLocation?
      geoproximityLocation;

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
  /// See <span pulumi-lang-nodejs="`resourceRecords`" pulumi-lang-dotnet="`ResourceRecords`" pulumi-lang-go="`resourceRecords`" pulumi-lang-python="`resource_records`" pulumi-lang-yaml="`resourceRecords`" pulumi-lang-java="`resourceRecords`">`resource_records`</span> below.
  final List<RecordsExclusiveResourceRecordSetResourceRecord>? resourceRecords;

  /// An identifier that differentiates among multiple resource record sets that have the same combination of name and type.
  /// Required if using <span pulumi-lang-nodejs="`cidrRoutingConfig`" pulumi-lang-dotnet="`CidrRoutingConfig`" pulumi-lang-go="`cidrRoutingConfig`" pulumi-lang-python="`cidr_routing_config`" pulumi-lang-yaml="`cidrRoutingConfig`" pulumi-lang-java="`cidrRoutingConfig`">`cidr_routing_config`</span>, <span pulumi-lang-nodejs="`failover`" pulumi-lang-dotnet="`Failover`" pulumi-lang-go="`failover`" pulumi-lang-python="`failover`" pulumi-lang-yaml="`failover`" pulumi-lang-java="`failover`">`failover`</span>, <span pulumi-lang-nodejs="`geolocation`" pulumi-lang-dotnet="`Geolocation`" pulumi-lang-go="`geolocation`" pulumi-lang-python="`geolocation`" pulumi-lang-yaml="`geolocation`" pulumi-lang-java="`geolocation`">`geolocation`</span>,<span pulumi-lang-nodejs="`geoproximityLocation`" pulumi-lang-dotnet="`GeoproximityLocation`" pulumi-lang-go="`geoproximityLocation`" pulumi-lang-python="`geoproximity_location`" pulumi-lang-yaml="`geoproximityLocation`" pulumi-lang-java="`geoproximityLocation`">`geoproximity_location`</span>, <span pulumi-lang-nodejs="`multivalueAnswer`" pulumi-lang-dotnet="`MultivalueAnswer`" pulumi-lang-go="`multivalueAnswer`" pulumi-lang-python="`multivalue_answer`" pulumi-lang-yaml="`multivalueAnswer`" pulumi-lang-java="`multivalueAnswer`">`multivalue_answer`</span>, <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span>, or <span pulumi-lang-nodejs="`weight`" pulumi-lang-dotnet="`Weight`" pulumi-lang-go="`weight`" pulumi-lang-python="`weight`" pulumi-lang-yaml="`weight`" pulumi-lang-java="`weight`">`weight`</span>.
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
  /// > Exactly one of <span pulumi-lang-nodejs="`resourceRecords`" pulumi-lang-dotnet="`ResourceRecords`" pulumi-lang-go="`resourceRecords`" pulumi-lang-python="`resource_records`" pulumi-lang-yaml="`resourceRecords`" pulumi-lang-java="`resourceRecords`">`resource_records`</span> or <span pulumi-lang-nodejs="`aliasTarget`" pulumi-lang-dotnet="`AliasTarget`" pulumi-lang-go="`aliasTarget`" pulumi-lang-python="`alias_target`" pulumi-lang-yaml="`aliasTarget`" pulumi-lang-java="`aliasTarget`">`alias_target`</span> must be specified.
  final String? type;

  /// Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set.
  final int? weight;

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
    final map = <String, dynamic>{};
    final aliasTargetValue = aliasTarget;
    if (aliasTargetValue != null) {
      map['aliasTarget'] = aliasTargetValue.toMap();
    }
    final cidrRoutingConfigValue = cidrRoutingConfig;
    if (cidrRoutingConfigValue != null) {
      map['cidrRoutingConfig'] = cidrRoutingConfigValue.toMap();
    }
    final failoverValue = failover;
    if (failoverValue != null) {
      map['failover'] = failoverValue;
    }
    final geolocationValue = geolocation;
    if (geolocationValue != null) {
      map['geolocation'] = geolocationValue.toMap();
    }
    final geoproximityLocationValue = geoproximityLocation;
    if (geoproximityLocationValue != null) {
      map['geoproximityLocation'] = geoproximityLocationValue.toMap();
    }
    final healthCheckIdValue = healthCheckId;
    if (healthCheckIdValue != null) {
      map['healthCheckId'] = healthCheckIdValue;
    }
    final multiValueAnswerValue = multiValueAnswer;
    if (multiValueAnswerValue != null) {
      map['multiValueAnswer'] = multiValueAnswerValue;
    }
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceRecordsValue = resourceRecords;
    if (resourceRecordsValue != null) {
      map['resourceRecords'] = Input.encodeList<
          RecordsExclusiveResourceRecordSetResourceRecord,
          Map<String, dynamic>>(resourceRecordsValue, (value) => value.toMap());
    }
    final setIdentifierValue = setIdentifier;
    if (setIdentifierValue != null) {
      map['setIdentifier'] = setIdentifierValue;
    }
    final trafficPolicyInstanceIdValue = trafficPolicyInstanceId;
    if (trafficPolicyInstanceIdValue != null) {
      map['trafficPolicyInstanceId'] = trafficPolicyInstanceIdValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory RecordsExclusiveResourceRecordSet.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSet(
      aliasTarget: map['aliasTarget'] == null
          ? null
          : RecordsExclusiveResourceRecordSetAliasTarget.fromMap(
              (map['aliasTarget'] as Map).cast<String, dynamic>()),
      cidrRoutingConfig: map['cidrRoutingConfig'] == null
          ? null
          : RecordsExclusiveResourceRecordSetCidrRoutingConfig.fromMap(
              (map['cidrRoutingConfig'] as Map).cast<String, dynamic>()),
      failover: map['failover'] == null ? null : map['failover'] as String,
      geolocation: map['geolocation'] == null
          ? null
          : RecordsExclusiveResourceRecordSetGeolocation.fromMap(
              (map['geolocation'] as Map).cast<String, dynamic>()),
      geoproximityLocation: map['geoproximityLocation'] == null
          ? null
          : RecordsExclusiveResourceRecordSetGeoproximityLocation.fromMap(
              (map['geoproximityLocation'] as Map).cast<String, dynamic>()),
      healthCheckId:
          map['healthCheckId'] == null ? null : map['healthCheckId'] as String,
      multiValueAnswer: map['multiValueAnswer'] == null
          ? null
          : map['multiValueAnswer'] as bool,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceRecords: map['resourceRecords'] == null
          ? null
          : Input.decodeList<RecordsExclusiveResourceRecordSetResourceRecord>(
              map['resourceRecords'],
              (value) =>
                  RecordsExclusiveResourceRecordSetResourceRecord.fromMap(
                      (value as Map).cast<String, dynamic>())),
      setIdentifier:
          map['setIdentifier'] == null ? null : map['setIdentifier'] as String,
      trafficPolicyInstanceId: map['trafficPolicyInstanceId'] == null
          ? null
          : map['trafficPolicyInstanceId'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
