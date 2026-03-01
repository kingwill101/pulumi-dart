// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_alias.dart';
import 'record_cidr_routing_policy.dart';
import 'record_failover_routing_policy.dart';
import 'record_geolocation_routing_policy.dart';
import 'record_geoproximity_routing_policy.dart';
import 'record_latency_routing_policy.dart';
import 'record_weighted_routing_policy.dart';

/// Input properties used for looking up and filtering Record resources.
class RecordState {
  /// An alias block. Conflicts with `ttl` & `records`.
  /// Documented below.
  final pulumi.Input<List<RecordAlias>>? aliases;
  /// Allow creation of this record to overwrite an existing record, if any. This does not affect the ability to update the record using this provider and does not prevent other resources within this provider or manual Route 53 changes outside this provider from overwriting this record. `false` by default. This configuration is not recommended for most environments.
  ///
  /// Exactly one of `records` or `alias` must be specified: this determines whether it's an alias record.
  final pulumi.Input<bool>? allowOverwrite;
  /// A block indicating a routing policy based on the IP network ranges of requestors. Conflicts with any other routing policy. Documented below.
  final pulumi.Input<RecordCidrRoutingPolicy>? cidrRoutingPolicy;
  /// A block indicating the routing behavior when associated health check fails. Conflicts with any other routing policy. Documented below.
  final pulumi.Input<List<RecordFailoverRoutingPolicy>>? failoverRoutingPolicies;
  /// [FQDN](https://en.wikipedia.org/wiki/Fully_qualified_domain_name) built using the zone domain and `name`.
  final pulumi.Input<String>? fqdn;
  /// A block indicating a routing policy based on the geolocation of the requestor. Conflicts with any other routing policy. Documented below.
  final pulumi.Input<List<RecordGeolocationRoutingPolicy>>? geolocationRoutingPolicies;
  /// A block indicating a routing policy based on the geoproximity of the requestor. Conflicts with any other routing policy. Documented below.
  final pulumi.Input<RecordGeoproximityRoutingPolicy>? geoproximityRoutingPolicy;
  /// The health check the record should be associated with.
  final pulumi.Input<String>? healthCheckId;
  /// A block indicating a routing policy based on the latency between the requestor and an AWS region. Conflicts with any other routing policy. Documented below.
  final pulumi.Input<List<RecordLatencyRoutingPolicy>>? latencyRoutingPolicies;
  /// Set to `true` to indicate a multivalue answer routing policy. Conflicts with any other routing policy.
  final pulumi.Input<bool>? multivalueAnswerRoutingPolicy;
  /// The name of the record.
  final pulumi.Input<String>? name;
  /// A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\"\"` inside the provider configuration string (e.g., `"first255characters\"\"morecharacters"`).
  final pulumi.Input<List<String>>? records;
  /// Unique identifier to differentiate records with routing policies from one another. Required if using `cidr_routing_policy`, `failover_routing_policy`, `geolocation_routing_policy`,`geoproximity_routing_policy`, `latency_routing_policy`, `multivalue_answer_routing_policy`, or `weighted_routing_policy`.
  final pulumi.Input<String>? setIdentifier;
  /// The TTL of the record.
  final pulumi.Input<int>? ttl;
  /// The record type. Valid values are `A`, `AAAA`, `CAA`, `CNAME`, `DS`, `HTTPS`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `SSHFP`, `SVCB`, `TLSA`, and `TXT`.
  final pulumi.Input<String>? type;
  /// A block indicating a weighted routing policy. Conflicts with any other routing policy. Documented below.
  final pulumi.Input<List<RecordWeightedRoutingPolicy>>? weightedRoutingPolicies;
  /// The ID of the hosted zone to contain this record.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [RecordState].
  /// [aliases] An alias block. Conflicts with `ttl` & `records`.
  /// [allowOverwrite] Allow creation of this record to overwrite an existing record, if any. This does not affect the ability to update the record using this provider and does not prevent other resources within this provider or manual Route 53 changes outside this provider from overwriting this record. `false` by default. This configuration is not recommended for most environments.
  /// [cidrRoutingPolicy] A block indicating a routing policy based on the IP network ranges of requestors. Conflicts with any other routing policy. Documented below.
  /// [failoverRoutingPolicies] A block indicating the routing behavior when associated health check fails. Conflicts with any other routing policy. Documented below.
  /// [fqdn] [FQDN](https://en.wikipedia.org/wiki/Fully_qualified_domain_name) built using the zone domain and `name`.
  /// [geolocationRoutingPolicies] A block indicating a routing policy based on the geolocation of the requestor. Conflicts with any other routing policy. Documented below.
  /// [geoproximityRoutingPolicy] A block indicating a routing policy based on the geoproximity of the requestor. Conflicts with any other routing policy. Documented below.
  /// [healthCheckId] The health check the record should be associated with.
  /// [latencyRoutingPolicies] A block indicating a routing policy based on the latency between the requestor and an AWS region. Conflicts with any other routing policy. Documented below.
  /// [multivalueAnswerRoutingPolicy] Set to `true` to indicate a multivalue answer routing policy. Conflicts with any other routing policy.
  /// [name] The name of the record.
  /// [records] A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\"\"` inside the provider configuration string (e.g., `"first255characters\"\"morecharacters"`).
  /// [setIdentifier] Unique identifier to differentiate records with routing policies from one another. Required if using `cidr_routing_policy`, `failover_routing_policy`, `geolocation_routing_policy`,`geoproximity_routing_policy`, `latency_routing_policy`, `multivalue_answer_routing_policy`, or `weighted_routing_policy`.
  /// [ttl] The TTL of the record.
  /// [type] The record type. Valid values are `A`, `AAAA`, `CAA`, `CNAME`, `DS`, `HTTPS`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `SSHFP`, `SVCB`, `TLSA`, and `TXT`.
  /// [weightedRoutingPolicies] A block indicating a weighted routing policy. Conflicts with any other routing policy. Documented below.
  /// [zoneId] The ID of the hosted zone to contain this record.
  RecordState({
    pulumi.Output<List<RecordAlias>>? aliases,
    pulumi.Output<bool>? allowOverwrite,
    pulumi.Output<RecordCidrRoutingPolicy>? cidrRoutingPolicy,
    pulumi.Output<List<RecordFailoverRoutingPolicy>>? failoverRoutingPolicies,
    pulumi.Output<String>? fqdn,
    pulumi.Output<List<RecordGeolocationRoutingPolicy>>? geolocationRoutingPolicies,
    pulumi.Output<RecordGeoproximityRoutingPolicy>? geoproximityRoutingPolicy,
    pulumi.Output<String>? healthCheckId,
    pulumi.Output<List<RecordLatencyRoutingPolicy>>? latencyRoutingPolicies,
    pulumi.Output<bool>? multivalueAnswerRoutingPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? records,
    pulumi.Output<String>? setIdentifier,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
    pulumi.Output<List<RecordWeightedRoutingPolicy>>? weightedRoutingPolicies,
    pulumi.Output<String>? zoneId,
  }) :
      aliases = pulumi.Input.asOptionalInput<List<RecordAlias>>(aliases),
      allowOverwrite = pulumi.Input.asOptionalInput<bool>(allowOverwrite),
      cidrRoutingPolicy = pulumi.Input.asOptionalInput<RecordCidrRoutingPolicy>(cidrRoutingPolicy),
      failoverRoutingPolicies = pulumi.Input.asOptionalInput<List<RecordFailoverRoutingPolicy>>(failoverRoutingPolicies),
      fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
      geolocationRoutingPolicies = pulumi.Input.asOptionalInput<List<RecordGeolocationRoutingPolicy>>(geolocationRoutingPolicies),
      geoproximityRoutingPolicy = pulumi.Input.asOptionalInput<RecordGeoproximityRoutingPolicy>(geoproximityRoutingPolicy),
      healthCheckId = pulumi.Input.asOptionalInput<String>(healthCheckId),
      latencyRoutingPolicies = pulumi.Input.asOptionalInput<List<RecordLatencyRoutingPolicy>>(latencyRoutingPolicies),
      multivalueAnswerRoutingPolicy = pulumi.Input.asOptionalInput<bool>(multivalueAnswerRoutingPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      records = pulumi.Input.asOptionalInput<List<String>>(records),
      setIdentifier = pulumi.Input.asOptionalInput<String>(setIdentifier),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      weightedRoutingPolicies = pulumi.Input.asOptionalInput<List<RecordWeightedRoutingPolicy>>(weightedRoutingPolicies),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?pulumi.Input.mapOptionalInputValue<List<RecordAlias>, List<Map<String, dynamic>>>(aliases, (value) => pulumi.Input.encodeList<RecordAlias, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowOverwrite': ?allowOverwrite,
      'cidrRoutingPolicy': ?pulumi.Input.mapOptionalInputValue<RecordCidrRoutingPolicy, Map<String, dynamic>>(cidrRoutingPolicy, (value) => value.toMap()),
      'failoverRoutingPolicies': ?pulumi.Input.mapOptionalInputValue<List<RecordFailoverRoutingPolicy>, List<Map<String, dynamic>>>(failoverRoutingPolicies, (value) => pulumi.Input.encodeList<RecordFailoverRoutingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fqdn': ?fqdn,
      'geolocationRoutingPolicies': ?pulumi.Input.mapOptionalInputValue<List<RecordGeolocationRoutingPolicy>, List<Map<String, dynamic>>>(geolocationRoutingPolicies, (value) => pulumi.Input.encodeList<RecordGeolocationRoutingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'geoproximityRoutingPolicy': ?pulumi.Input.mapOptionalInputValue<RecordGeoproximityRoutingPolicy, Map<String, dynamic>>(geoproximityRoutingPolicy, (value) => value.toMap()),
      'healthCheckId': ?healthCheckId,
      'latencyRoutingPolicies': ?pulumi.Input.mapOptionalInputValue<List<RecordLatencyRoutingPolicy>, List<Map<String, dynamic>>>(latencyRoutingPolicies, (value) => pulumi.Input.encodeList<RecordLatencyRoutingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multivalueAnswerRoutingPolicy': ?multivalueAnswerRoutingPolicy,
      'name': ?name,
      'records': ?records,
      'setIdentifier': ?setIdentifier,
      'ttl': ?ttl,
      'type': ?type,
      'weightedRoutingPolicies': ?pulumi.Input.mapOptionalInputValue<List<RecordWeightedRoutingPolicy>, List<Map<String, dynamic>>>(weightedRoutingPolicies, (value) => pulumi.Input.encodeList<RecordWeightedRoutingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory RecordState.fromMap(Map<String, dynamic> map) {
    return RecordState(
      aliases: map['aliases'] == null ? null : pulumi.Output.create<List<RecordAlias>>(pulumi.Input.decodeList<RecordAlias>(map['aliases'], (value) => RecordAlias.fromMap((value as Map).cast<String, dynamic>()))),
      allowOverwrite: map['allowOverwrite'] == null ? null : pulumi.Output.create<bool>(map['allowOverwrite'] as bool),
      cidrRoutingPolicy: map['cidrRoutingPolicy'] == null ? null : pulumi.Output.create<RecordCidrRoutingPolicy>(RecordCidrRoutingPolicy.fromMap((map['cidrRoutingPolicy'] as Map).cast<String, dynamic>())),
      failoverRoutingPolicies: map['failoverRoutingPolicies'] == null ? null : pulumi.Output.create<List<RecordFailoverRoutingPolicy>>(pulumi.Input.decodeList<RecordFailoverRoutingPolicy>(map['failoverRoutingPolicies'], (value) => RecordFailoverRoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      fqdn: map['fqdn'] == null ? null : pulumi.Output.create<String>(map['fqdn'] as String),
      geolocationRoutingPolicies: map['geolocationRoutingPolicies'] == null ? null : pulumi.Output.create<List<RecordGeolocationRoutingPolicy>>(pulumi.Input.decodeList<RecordGeolocationRoutingPolicy>(map['geolocationRoutingPolicies'], (value) => RecordGeolocationRoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      geoproximityRoutingPolicy: map['geoproximityRoutingPolicy'] == null ? null : pulumi.Output.create<RecordGeoproximityRoutingPolicy>(RecordGeoproximityRoutingPolicy.fromMap((map['geoproximityRoutingPolicy'] as Map).cast<String, dynamic>())),
      healthCheckId: map['healthCheckId'] == null ? null : pulumi.Output.create<String>(map['healthCheckId'] as String),
      latencyRoutingPolicies: map['latencyRoutingPolicies'] == null ? null : pulumi.Output.create<List<RecordLatencyRoutingPolicy>>(pulumi.Input.decodeList<RecordLatencyRoutingPolicy>(map['latencyRoutingPolicies'], (value) => RecordLatencyRoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      multivalueAnswerRoutingPolicy: map['multivalueAnswerRoutingPolicy'] == null ? null : pulumi.Output.create<bool>(map['multivalueAnswerRoutingPolicy'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      records: map['records'] == null ? null : pulumi.Output.create<List<String>>((map['records'] as List).cast<String>()),
      setIdentifier: map['setIdentifier'] == null ? null : pulumi.Output.create<String>(map['setIdentifier'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      weightedRoutingPolicies: map['weightedRoutingPolicies'] == null ? null : pulumi.Output.create<List<RecordWeightedRoutingPolicy>>(pulumi.Input.decodeList<RecordWeightedRoutingPolicy>(map['weightedRoutingPolicies'], (value) => RecordWeightedRoutingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

