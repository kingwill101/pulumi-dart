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
  /// An alias block. Conflicts with <span pulumi-lang-nodejs="`ttl`" pulumi-lang-dotnet="`Ttl`" pulumi-lang-go="`ttl`" pulumi-lang-python="`ttl`" pulumi-lang-yaml="`ttl`" pulumi-lang-java="`ttl`">`ttl`</span> & <span pulumi-lang-nodejs="`records`" pulumi-lang-dotnet="`Records`" pulumi-lang-go="`records`" pulumi-lang-python="`records`" pulumi-lang-yaml="`records`" pulumi-lang-java="`records`">`records`</span>.
  /// Documented below.
  final Input<List<RecordAlias>>? aliases;

  /// Allow creation of this record to overwrite an existing record, if any. This does not affect the ability to update the record using this provider and does not prevent other resources within this provider or manual Route 53 changes outside this provider from overwriting this record. <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> by default. This configuration is not recommended for most environments.
  ///
  /// Exactly one of <span pulumi-lang-nodejs="`records`" pulumi-lang-dotnet="`Records`" pulumi-lang-go="`records`" pulumi-lang-python="`records`" pulumi-lang-yaml="`records`" pulumi-lang-java="`records`">`records`</span> or <span pulumi-lang-nodejs="`alias`" pulumi-lang-dotnet="`Alias`" pulumi-lang-go="`alias`" pulumi-lang-python="`alias`" pulumi-lang-yaml="`alias`" pulumi-lang-java="`alias`">`alias`</span> must be specified: this determines whether it's an alias record.
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

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to indicate a multivalue answer routing policy. Conflicts with any other routing policy.
  final Input<bool>? multivalueAnswerRoutingPolicy;

  /// The name of the record.
  final Input<String> name;

  /// A string list of records. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\"\"` inside the provider configuration string (e.g., `"first255characters\"\"morecharacters"`).
  final Input<List<String>>? records;

  /// Unique identifier to differentiate records with routing policies from one another. Required if using <span pulumi-lang-nodejs="`cidrRoutingPolicy`" pulumi-lang-dotnet="`CidrRoutingPolicy`" pulumi-lang-go="`cidrRoutingPolicy`" pulumi-lang-python="`cidr_routing_policy`" pulumi-lang-yaml="`cidrRoutingPolicy`" pulumi-lang-java="`cidrRoutingPolicy`">`cidr_routing_policy`</span>, <span pulumi-lang-nodejs="`failoverRoutingPolicy`" pulumi-lang-dotnet="`FailoverRoutingPolicy`" pulumi-lang-go="`failoverRoutingPolicy`" pulumi-lang-python="`failover_routing_policy`" pulumi-lang-yaml="`failoverRoutingPolicy`" pulumi-lang-java="`failoverRoutingPolicy`">`failover_routing_policy`</span>, <span pulumi-lang-nodejs="`geolocationRoutingPolicy`" pulumi-lang-dotnet="`GeolocationRoutingPolicy`" pulumi-lang-go="`geolocationRoutingPolicy`" pulumi-lang-python="`geolocation_routing_policy`" pulumi-lang-yaml="`geolocationRoutingPolicy`" pulumi-lang-java="`geolocationRoutingPolicy`">`geolocation_routing_policy`</span>,<span pulumi-lang-nodejs="`geoproximityRoutingPolicy`" pulumi-lang-dotnet="`GeoproximityRoutingPolicy`" pulumi-lang-go="`geoproximityRoutingPolicy`" pulumi-lang-python="`geoproximity_routing_policy`" pulumi-lang-yaml="`geoproximityRoutingPolicy`" pulumi-lang-java="`geoproximityRoutingPolicy`">`geoproximity_routing_policy`</span>, <span pulumi-lang-nodejs="`latencyRoutingPolicy`" pulumi-lang-dotnet="`LatencyRoutingPolicy`" pulumi-lang-go="`latencyRoutingPolicy`" pulumi-lang-python="`latency_routing_policy`" pulumi-lang-yaml="`latencyRoutingPolicy`" pulumi-lang-java="`latencyRoutingPolicy`">`latency_routing_policy`</span>, <span pulumi-lang-nodejs="`multivalueAnswerRoutingPolicy`" pulumi-lang-dotnet="`MultivalueAnswerRoutingPolicy`" pulumi-lang-go="`multivalueAnswerRoutingPolicy`" pulumi-lang-python="`multivalue_answer_routing_policy`" pulumi-lang-yaml="`multivalueAnswerRoutingPolicy`" pulumi-lang-java="`multivalueAnswerRoutingPolicy`">`multivalue_answer_routing_policy`</span>, or <span pulumi-lang-nodejs="`weightedRoutingPolicy`" pulumi-lang-dotnet="`WeightedRoutingPolicy`" pulumi-lang-go="`weightedRoutingPolicy`" pulumi-lang-python="`weighted_routing_policy`" pulumi-lang-yaml="`weightedRoutingPolicy`" pulumi-lang-java="`weightedRoutingPolicy`">`weighted_routing_policy`</span>.
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
