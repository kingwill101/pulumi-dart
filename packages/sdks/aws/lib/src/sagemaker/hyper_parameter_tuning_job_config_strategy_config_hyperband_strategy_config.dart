// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig {
  /// Upper bound for resource allocation.
  final pulumi.Input<int?>? maxResource;
  /// Lower bound for resource allocation.
  final pulumi.Input<int?>? minResource;

  /// Creates a new [HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig].
  /// [maxResource] Upper bound for resource allocation.
  /// [minResource] Lower bound for resource allocation.
  const HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig({
    this.maxResource,
    this.minResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxResource': ?maxResource,
      'minResource': ?minResource,
    };
  }

  factory HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigStrategyConfigHyperbandStrategyConfig(
      maxResource: (() { final guardedValue = map['maxResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minResource: (() { final guardedValue = map['minResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
