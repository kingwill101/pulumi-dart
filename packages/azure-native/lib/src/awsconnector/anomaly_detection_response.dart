// ignore_for_file: unused_element, unnecessary_cast

import 'anomaly_result_enum_enum_value_response.dart';
import 'mitigation_in_effect_enum_enum_value_response.dart';

/// Definition of AnomalyDetection
class AnomalyDetectionResponse {
  /// <p>Indicates whether anomaly mitigation is in progress.</p>
  final MitigationInEffectEnumEnumValueResponse? mitigationInEffect;
  /// <p>The latest anomaly detection result.</p>
  final AnomalyResultEnumEnumValueResponse? result;

  /// Creates a new [AnomalyDetectionResponse].
  /// [mitigationInEffect] <p>Indicates whether anomaly mitigation is in progress.</p>
  /// [result] <p>The latest anomaly detection result.</p>
  AnomalyDetectionResponse({
    this.mitigationInEffect,
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationInEffect': ?mitigationInEffect == null ? null : mitigationInEffect!.toMap(),
      'result': ?result == null ? null : result!.toMap(),
    };
  }

  factory AnomalyDetectionResponse.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectionResponse(
      mitigationInEffect: map['mitigationInEffect'] == null ? null : MitigationInEffectEnumEnumValueResponse.fromMap((map['mitigationInEffect'] as Map).cast<String, dynamic>()),
      result: map['result'] == null ? null : AnomalyResultEnumEnumValueResponse.fromMap((map['result'] as Map).cast<String, dynamic>()),
    );
  }
}

