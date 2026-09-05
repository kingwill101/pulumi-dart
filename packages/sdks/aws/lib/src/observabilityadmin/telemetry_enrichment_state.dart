// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_enrichment_timeouts.dart';

/// Input properties used for looking up and filtering TelemetryEnrichment resources.
class TelemetryEnrichmentState {
  /// ARN of the AWS Resource Explorer managed view created for the telemetry enrichment feature.
  final pulumi.Input<String?>? awsResourceExplorerManagedViewArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<TelemetryEnrichmentTimeouts?>? timeouts;

  /// Creates a new [TelemetryEnrichmentState].
  /// [awsResourceExplorerManagedViewArn] ARN of the AWS Resource Explorer managed view created for the telemetry enrichment feature.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const TelemetryEnrichmentState({
    this.awsResourceExplorerManagedViewArn,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsResourceExplorerManagedViewArn': ?awsResourceExplorerManagedViewArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryEnrichmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryEnrichmentState.fromMap(Map<String, dynamic> map) {
    return TelemetryEnrichmentState(
      awsResourceExplorerManagedViewArn: (() { final guardedValue = map['awsResourceExplorerManagedViewArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryEnrichmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
