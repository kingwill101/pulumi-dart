// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_evaluation_for_organization_timeouts.dart';

/// {@template pulumi_observabilityadmin_telemetry_evaluation_for_organization_telemetry_evaluation_for_organization_args_doc}
/// The set of arguments for TelemetryEvaluationForOrganization.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_telemetry_evaluation_for_organization_telemetry_evaluation_for_organization_args_doc}
class TelemetryEvaluationForOrganizationArgs {
  /// Whether to start telemetry evaluation in all AWS Regions where CloudWatch Observability Admin is available. The current region becomes the home region. Mutually exclusive with `regions`.
  final pulumi.Input<bool?>? allRegions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of AWS Regions to include in multi-region telemetry evaluation. The current region is always implicitly included. Mutually exclusive with `allRegions`.
  final pulumi.Input<List<String>?>? regions;
  final pulumi.Input<TelemetryEvaluationForOrganizationTimeouts?>? timeouts;

  /// Creates a new [TelemetryEvaluationForOrganizationArgs].
  /// [allRegions] Whether to start telemetry evaluation in all AWS Regions where CloudWatch Observability Admin is available. The current region becomes the home region. Mutually exclusive with `regions`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regions] List of AWS Regions to include in multi-region telemetry evaluation. The current region is always implicitly included. Mutually exclusive with `allRegions`.
  /// [timeouts] Optional.
  const TelemetryEvaluationForOrganizationArgs({
    this.allRegions,
    this.region,
    this.regions,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRegions': ?allRegions,
      'region': ?region,
      'regions': ?regions,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryEvaluationForOrganizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryEvaluationForOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return TelemetryEvaluationForOrganizationArgs(
      allRegions: (() { final guardedValue = map['allRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryEvaluationForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
