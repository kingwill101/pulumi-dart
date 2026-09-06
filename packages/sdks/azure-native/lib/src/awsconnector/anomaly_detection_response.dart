// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_result_enum_enum_value_response.dart';
import 'mitigation_in_effect_enum_enum_value_response.dart';

/// Definition of AnomalyDetection
class AnomalyDetectionResponse {
  /// &lt;p&gt;Indicates whether anomaly mitigation is in progress.&lt;/p&gt;
  final pulumi.Input<MitigationInEffectEnumEnumValueResponse?>? mitigationInEffect;
  /// &lt;p&gt;The latest anomaly detection result.&lt;/p&gt;
  final pulumi.Input<AnomalyResultEnumEnumValueResponse?>? result;

  /// Creates a new [AnomalyDetectionResponse].
  /// [mitigationInEffect] &lt;p&gt;Indicates whether anomaly mitigation is in progress.&lt;/p&gt;
  /// [result] &lt;p&gt;The latest anomaly detection result.&lt;/p&gt;
  const AnomalyDetectionResponse({
    this.mitigationInEffect,
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationInEffect': ?pulumi.Input.mapOptionalInputValue<MitigationInEffectEnumEnumValueResponse, Map<String, dynamic>>(mitigationInEffect, (value) => value.toMap()),
      'result': ?pulumi.Input.mapOptionalInputValue<AnomalyResultEnumEnumValueResponse, Map<String, dynamic>>(result, (value) => value.toMap()),
    };
  }

  factory AnomalyDetectionResponse.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectionResponse(
      mitigationInEffect: (() { final guardedValue = map['mitigationInEffect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MitigationInEffectEnumEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyResultEnumEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
