// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_enrichment_timeouts.dart';

/// {@template pulumi_observabilityadmin_telemetry_enrichment_telemetry_enrichment_args_doc}
/// The set of arguments for TelemetryEnrichment.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_telemetry_enrichment_telemetry_enrichment_args_doc}
class TelemetryEnrichmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<TelemetryEnrichmentTimeouts>? timeouts;

  /// Creates a new [TelemetryEnrichmentArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const TelemetryEnrichmentArgs({
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryEnrichmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryEnrichmentArgs.fromMap(Map<String, dynamic> map) {
    return TelemetryEnrichmentArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
