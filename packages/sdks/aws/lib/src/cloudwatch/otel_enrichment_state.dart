// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'otel_enrichment_timeouts.dart';

/// Input properties used for looking up and filtering OtelEnrichment resources.
class OtelEnrichmentState {
  /// AWS region where this resource is managed.
  final pulumi.Input<String?>? region;
  final pulumi.Input<OtelEnrichmentTimeouts?>? timeouts;

  /// Creates a new [OtelEnrichmentState].
  /// [region] AWS region where this resource is managed.
  /// [timeouts] Optional.
  const OtelEnrichmentState({
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<OtelEnrichmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory OtelEnrichmentState.fromMap(Map<String, dynamic> map) {
    return OtelEnrichmentState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OtelEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
