// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_result_enum_enum_value.dart';
import 'mitigation_in_effect_enum_enum_value.dart';

/// Definition of AnomalyDetection
class AnomalyDetection {
  /// <p>Indicates whether anomaly mitigation is in progress.</p>
  final pulumi.Input<MitigationInEffectEnumEnumValue>? mitigationInEffect;
  /// <p>The latest anomaly detection result.</p>
  final pulumi.Input<AnomalyResultEnumEnumValue>? result;

  /// Creates a new [AnomalyDetection].
  /// [mitigationInEffect] <p>Indicates whether anomaly mitigation is in progress.</p>
  /// [result] <p>The latest anomaly detection result.</p>
  AnomalyDetection({
    this.mitigationInEffect,
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationInEffect': ?pulumi.Input.mapOptionalInputValue<MitigationInEffectEnumEnumValue, Map<String, dynamic>>(mitigationInEffect, (value) => value.toMap()),
      'result': ?pulumi.Input.mapOptionalInputValue<AnomalyResultEnumEnumValue, Map<String, dynamic>>(result, (value) => value.toMap()),
    };
  }

  factory AnomalyDetection.fromMap(Map<String, dynamic> map) {
    return AnomalyDetection(
      mitigationInEffect: map['mitigationInEffect'] == null ? null : (MitigationInEffectEnumEnumValue.fromMap((map['mitigationInEffect']! as Map).cast<String, dynamic>())).input(),
      result: map['result'] == null ? null : (AnomalyResultEnumEnumValue.fromMap((map['result']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

