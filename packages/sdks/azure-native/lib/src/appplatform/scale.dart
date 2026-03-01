// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule.dart';

/// Azure Spring Apps scaling configurations.
class Scale {
  /// Optional. Maximum number of container replicas. Defaults to 10 if not set.
  final int? maxReplicas;
  /// Optional. Minimum number of container replicas.
  final int? minReplicas;
  /// Scaling rules.
  final List<ScaleRule>? rules;

  /// Creates a new [Scale].
  /// [maxReplicas] Optional. Maximum number of container replicas. Defaults to 10 if not set.
  /// [minReplicas] Optional. Minimum number of container replicas.
  /// [rules] Scaling rules.
  Scale({
    this.maxReplicas,
    this.minReplicas,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ScaleRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory Scale.fromMap(Map<String, dynamic> map) {
    return Scale(
      maxReplicas: map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ScaleRule>(map['rules'], (value) => ScaleRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

