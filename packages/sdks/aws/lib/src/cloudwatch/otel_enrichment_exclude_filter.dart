// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OtelEnrichmentExcludeFilter {
  /// Names of the metrics to select within the namespace, up to 100. Omit to match every metric in the namespace.
  final pulumi.Input<List<String>?>? metricNames;
  /// Namespace of the metrics to select. Must be 1-255 characters and must not begin with a colon.
  final pulumi.Input<String> namespace;

  /// Creates a new [OtelEnrichmentExcludeFilter].
  /// [metricNames] Names of the metrics to select within the namespace, up to 100. Omit to match every metric in the namespace.
  /// [namespace] Namespace of the metrics to select. Must be 1-255 characters and must not begin with a colon.
  const OtelEnrichmentExcludeFilter({
    this.metricNames,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricNames': ?metricNames,
      'namespace': namespace,
    };
  }

  factory OtelEnrichmentExcludeFilter.fromMap(Map<String, dynamic> map) {
    return OtelEnrichmentExcludeFilter(
      metricNames: (() { final guardedValue = map['metricNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
