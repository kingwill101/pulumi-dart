// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_result_enum_enum_value.dart';
import 'mitigation_in_effect_enum_enum_value.dart';

/// Definition of AnomalyDetection
class AnomalyDetection {
  /// &lt;p&gt;Indicates whether anomaly mitigation is in progress.&lt;/p&gt;
  final pulumi.Input<MitigationInEffectEnumEnumValue>? mitigationInEffect;
  /// &lt;p&gt;The latest anomaly detection result.&lt;/p&gt;
  final pulumi.Input<AnomalyResultEnumEnumValue>? result;

  /// Creates a new [AnomalyDetection].
  /// [mitigationInEffect] &lt;p&gt;Indicates whether anomaly mitigation is in progress.&lt;/p&gt;
  /// [result] &lt;p&gt;The latest anomaly detection result.&lt;/p&gt;
  const AnomalyDetection({
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
      mitigationInEffect: (() { final guardedValue = map['mitigationInEffect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MitigationInEffectEnumEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyResultEnumEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
