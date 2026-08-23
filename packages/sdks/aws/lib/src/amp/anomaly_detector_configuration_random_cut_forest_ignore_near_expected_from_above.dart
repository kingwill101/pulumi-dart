// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove {
  /// Absolute amount by which the observed value may exceed the expected value before being reported as an anomaly. Conflicts with `ratio`.
  final pulumi.Input<double>? amount;
  /// Ratio by which the observed value may exceed the expected value before being reported as an anomaly. Must be at least `0`. Conflicts with `amount`.
  final pulumi.Input<double>? ratio;

  /// Creates a new [AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove].
  /// [amount] Absolute amount by which the observed value may exceed the expected value before being reported as an anomaly. Conflicts with `ratio`.
  /// [ratio] Ratio by which the observed value may exceed the expected value before being reported as an anomaly. Must be at least `0`. Conflicts with `amount`.
  const AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove({
    this.amount,
    this.ratio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'ratio': ?ratio,
    };
  }

  factory AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      ratio: (() { final guardedValue = map['ratio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
