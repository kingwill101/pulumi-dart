// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'otel_enrichment_exclude_filter.dart';
import 'otel_enrichment_include_filter.dart';
import 'otel_enrichment_timeouts.dart';

/// Input properties used for looking up and filtering OtelEnrichment resources.
class OtelEnrichmentState {
  /// Namespaces and metric names to leave unenriched. See below.
  final pulumi.Input<List<OtelEnrichmentExcludeFilter>?>? excludeFilters;
  /// Namespaces and metric names to enrich. See below.
  final pulumi.Input<List<OtelEnrichmentIncludeFilter>?>? includeFilters;
  /// AWS region where this resource is managed.
  final pulumi.Input<String?>? region;
  final pulumi.Input<OtelEnrichmentTimeouts?>? timeouts;

  /// Creates a new [OtelEnrichmentState].
  /// [excludeFilters] Namespaces and metric names to leave unenriched. See below.
  /// [includeFilters] Namespaces and metric names to enrich. See below.
  /// [region] AWS region where this resource is managed.
  /// [timeouts] Optional.
  const OtelEnrichmentState({
    this.excludeFilters,
    this.includeFilters,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFilters': ?pulumi.Input.mapOptionalInputValue<List<OtelEnrichmentExcludeFilter>, List<Map<String, dynamic>>>(excludeFilters, (value) => pulumi.Input.encodeList<OtelEnrichmentExcludeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeFilters': ?pulumi.Input.mapOptionalInputValue<List<OtelEnrichmentIncludeFilter>, List<Map<String, dynamic>>>(includeFilters, (value) => pulumi.Input.encodeList<OtelEnrichmentIncludeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<OtelEnrichmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory OtelEnrichmentState.fromMap(Map<String, dynamic> map) {
    return OtelEnrichmentState(
      excludeFilters: (() { final guardedValue = map['excludeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OtelEnrichmentExcludeFilter>(guardedValue, (value) => OtelEnrichmentExcludeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includeFilters: (() { final guardedValue = map['includeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OtelEnrichmentIncludeFilter>(guardedValue, (value) => OtelEnrichmentIncludeFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OtelEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
