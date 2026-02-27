// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../record_alias/record_alias.dart';
import '../record_cidr_routing_policy/record_cidr_routing_policy.dart';
import '../record_failover_routing_policy/record_failover_routing_policy.dart';
import '../record_geolocation_routing_policy/record_geolocation_routing_policy.dart';
import '../record_geoproximity_routing_policy/record_geoproximity_routing_policy.dart';
import '../record_latency_routing_policy/record_latency_routing_policy.dart';
import '../record_weighted_routing_policy/record_weighted_routing_policy.dart';

/// The set of arguments for Record.
class RecordArgs {
  /// An alias block. Conflicts with `ttl` & `records`.
  /// Documented below.
  final Input<List<RecordAlias>>? aliases;

  /// Allow creation of this record to overwrite an existing record, if any. This does not affect the ability to update the record using this provider and does not prevent other resources within this provider or manual Route 53 changes outside this provider from overwriting this record. `false` by default. This configuration is not recommended for most environments.
  ///
  /// Exactly one of `records` or `alias` must be specified: this determines whether it's an alias record.
  final Input<bool>? allowOverwrite;

  /// A block indicating a routing policy based on the IP network ranges of requestors. Conflicts with any other routing policy. Documented below.
  final Input<RecordCidrRoutingPolicy>? cidrRoutingPolicy;

  /// A block indicating the routing behavior when associated health check fails. Conflicts with any other routing policy. Documented below.
  final Input<List<RecordFailoverRoutingPolicy>>? failoverRoutingPolicies;

  /// A block indicating a routing policy based on the geolocation of the requestor. Conflicts with any other routing policy. Documented below.
  final Input<List<RecordGeolocationRoutingPolicy>>? geolocationRoutingPolicies;

  /// A block indicating a routing policy based on the geoproximity of the requestor. Conflicts with any other routing policy. Documented below.
  final Input<RecordGeoproximityRoutingPolicy>? geoproximityRoutingPolicy;

  /// The health check the record should be associated with.
  final Input<String>? healthCheckId;

  /// A block indicating a routing policy based on the latency between the requestor and an AWS region. Conflicts with any other routing policy. Documented below.
  final Input<List<RecordLatencyRoutingPolicy>>? latencyRoutingPolicies;

  /// Set to `true` to indicate a multivalue answer routing policy. Conflicts with any other routing policy.
  final Input<bool>? multivalueAnswerRoutingPolicy;

  /// The name of the record.
  final Input<String> name;

  /// A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\"\"` inside the provider configuration string (e.g., `"first255characters\"\"morecharacters"`).
  final Input<List<String>>? records;

  /// Unique identifier to differentiate records with routing policies from one another. Required if using `cidr_routing_policy`, `failover_routing_policy`, `geolocation_routing_policy`,`geoproximity_routing_policy`, `latency_routing_policy`, `multivalue_answer_routing_policy`, or `weighted_routing_policy`.
  final Input<String>? setIdentifier;

  /// The TTL of the record.
  final Input<int>? ttl;

  /// The record type. Valid values are `A`, `AAAA`, `CAA`, `CNAME`, `DS`, `HTTPS`, `MX`, `NAPTR`, `NS`, `PTR`, `SOA`, `SPF`, `SRV`, `SSHFP`, `SVCB`, `TLSA`, and `TXT`.
  final Input<String> type;

  /// A block indicating a weighted routing policy. Conflicts with any other routing policy. Documented below.
  final Input<List<RecordWeightedRoutingPolicy>>? weightedRoutingPolicies;

  /// The ID of the hosted zone to contain this record.
  final Input<String> zoneId;

  RecordArgs({
    this.aliases,
    this.allowOverwrite,
    this.cidrRoutingPolicy,
    this.failoverRoutingPolicies,
    this.geolocationRoutingPolicies,
    this.geoproximityRoutingPolicy,
    this.healthCheckId,
    this.latencyRoutingPolicies,
    this.multivalueAnswerRoutingPolicy,
    required this.name,
    this.records,
    this.setIdentifier,
    this.ttl,
    required this.type,
    this.weightedRoutingPolicies,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasesValue = aliases;
    if (aliasesValue != null) {
      map['aliases'] = Input.mapOptionalInputValue<List<RecordAlias>,
              List<Map<String, dynamic>>>(
          aliasesValue,
          (value) => Input.encodeList<RecordAlias, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final allowOverwriteValue = allowOverwrite;
    if (allowOverwriteValue != null) {
      map['allowOverwrite'] = allowOverwriteValue;
    }
    final cidrRoutingPolicyValue = cidrRoutingPolicy;
    if (cidrRoutingPolicyValue != null) {
      map['cidrRoutingPolicy'] = Input.mapOptionalInputValue<
              RecordCidrRoutingPolicy, Map<String, dynamic>>(
          cidrRoutingPolicyValue, (value) => value.toMap());
    }
    final failoverRoutingPoliciesValue = failoverRoutingPolicies;
    if (failoverRoutingPoliciesValue != null) {
      map['failoverRoutingPolicies'] = Input.mapOptionalInputValue<
              List<RecordFailoverRoutingPolicy>, List<Map<String, dynamic>>>(
          failoverRoutingPoliciesValue,
          (value) => Input.encodeList<RecordFailoverRoutingPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final geolocationRoutingPoliciesValue = geolocationRoutingPolicies;
    if (geolocationRoutingPoliciesValue != null) {
      map['geolocationRoutingPolicies'] = Input.mapOptionalInputValue<
              List<RecordGeolocationRoutingPolicy>, List<Map<String, dynamic>>>(
          geolocationRoutingPoliciesValue,
          (value) => Input.encodeList<RecordGeolocationRoutingPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final geoproximityRoutingPolicyValue = geoproximityRoutingPolicy;
    if (geoproximityRoutingPolicyValue != null) {
      map['geoproximityRoutingPolicy'] = Input.mapOptionalInputValue<
              RecordGeoproximityRoutingPolicy, Map<String, dynamic>>(
          geoproximityRoutingPolicyValue, (value) => value.toMap());
    }
    final healthCheckIdValue = healthCheckId;
    if (healthCheckIdValue != null) {
      map['healthCheckId'] = healthCheckIdValue;
    }
    final latencyRoutingPoliciesValue = latencyRoutingPolicies;
    if (latencyRoutingPoliciesValue != null) {
      map['latencyRoutingPolicies'] = Input.mapOptionalInputValue<
              List<RecordLatencyRoutingPolicy>, List<Map<String, dynamic>>>(
          latencyRoutingPoliciesValue,
          (value) => Input.encodeList<RecordLatencyRoutingPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final multivalueAnswerRoutingPolicyValue = multivalueAnswerRoutingPolicy;
    if (multivalueAnswerRoutingPolicyValue != null) {
      map['multivalueAnswerRoutingPolicy'] = multivalueAnswerRoutingPolicyValue;
    }
    map['name'] = name;
    final recordsValue = records;
    if (recordsValue != null) {
      map['records'] = recordsValue;
    }
    final setIdentifierValue = setIdentifier;
    if (setIdentifierValue != null) {
      map['setIdentifier'] = setIdentifierValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    map['type'] = type;
    final weightedRoutingPoliciesValue = weightedRoutingPolicies;
    if (weightedRoutingPoliciesValue != null) {
      map['weightedRoutingPolicies'] = Input.mapOptionalInputValue<
              List<RecordWeightedRoutingPolicy>, List<Map<String, dynamic>>>(
          weightedRoutingPoliciesValue,
          (value) => Input.encodeList<RecordWeightedRoutingPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['zoneId'] = zoneId;
    return map;
  }

  factory RecordArgs.fromMap(Map<String, dynamic> map) {
    return RecordArgs(
      aliases: Input.asOptionalInput<List<RecordAlias>>(map['aliases']),
      allowOverwrite: Input.asOptionalInput<bool>(map['allowOverwrite']),
      cidrRoutingPolicy: Input.asOptionalInput<RecordCidrRoutingPolicy>(
          map['cidrRoutingPolicy']),
      failoverRoutingPolicies:
          Input.asOptionalInput<List<RecordFailoverRoutingPolicy>>(
              map['failoverRoutingPolicies']),
      geolocationRoutingPolicies:
          Input.asOptionalInput<List<RecordGeolocationRoutingPolicy>>(
              map['geolocationRoutingPolicies']),
      geoproximityRoutingPolicy:
          Input.asOptionalInput<RecordGeoproximityRoutingPolicy>(
              map['geoproximityRoutingPolicy']),
      healthCheckId: Input.asOptionalInput<String>(map['healthCheckId']),
      latencyRoutingPolicies:
          Input.asOptionalInput<List<RecordLatencyRoutingPolicy>>(
              map['latencyRoutingPolicies']),
      multivalueAnswerRoutingPolicy:
          Input.asOptionalInput<bool>(map['multivalueAnswerRoutingPolicy']),
      name: Input.asInput<String>(map['name']),
      records: Input.asOptionalInput<List<String>>(map['records']),
      setIdentifier: Input.asOptionalInput<String>(map['setIdentifier']),
      ttl: Input.asOptionalInput<int>(map['ttl']),
      type: Input.asInput<String>(map['type']),
      weightedRoutingPolicies:
          Input.asOptionalInput<List<RecordWeightedRoutingPolicy>>(
              map['weightedRoutingPolicies']),
      zoneId: Input.asInput<String>(map['zoneId']),
    );
  }
}
