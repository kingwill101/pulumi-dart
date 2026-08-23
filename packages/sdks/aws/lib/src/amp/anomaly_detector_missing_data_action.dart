// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnomalyDetectorMissingDataAction {
  /// Whether to treat missing data points as anomalies. Must be set to `true`. Conflicts with `skip`.
  final pulumi.Input<bool>? markAsAnomaly;
  /// Whether to skip missing data points without reporting them as anomalies. Must be set to `true`. Conflicts with `markAsAnomaly`.
  final pulumi.Input<bool>? skip;

  /// Creates a new [AnomalyDetectorMissingDataAction].
  /// [markAsAnomaly] Whether to treat missing data points as anomalies. Must be set to `true`. Conflicts with `skip`.
  /// [skip] Whether to skip missing data points without reporting them as anomalies. Must be set to `true`. Conflicts with `markAsAnomaly`.
  const AnomalyDetectorMissingDataAction({
    this.markAsAnomaly,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'markAsAnomaly': ?markAsAnomaly,
      'skip': ?skip,
    };
  }

  factory AnomalyDetectorMissingDataAction.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectorMissingDataAction(
      markAsAnomaly: (() { final guardedValue = map['markAsAnomaly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
