// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_result_enum_enum_value_response.dart';
import 'mitigation_in_effect_enum_enum_value_response.dart';

/// Definition of AnomalyDetection
class AnomalyDetectionResponse {
  /// <p>Indicates whether anomaly mitigation is in progress.</p>
  final pulumi.Input<MitigationInEffectEnumEnumValueResponse>? mitigationInEffect;
  /// <p>The latest anomaly detection result.</p>
  final pulumi.Input<AnomalyResultEnumEnumValueResponse>? result;

  /// Creates a new [AnomalyDetectionResponse].
  /// [mitigationInEffect] <p>Indicates whether anomaly mitigation is in progress.</p>
  /// [result] <p>The latest anomaly detection result.</p>
  AnomalyDetectionResponse({
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
      mitigationInEffect: map['mitigationInEffect'] == null ? null : (MitigationInEffectEnumEnumValueResponse.fromMap((map['mitigationInEffect'] as Map).cast<String, dynamic>())).input(),
      result: map['result'] == null ? null : (AnomalyResultEnumEnumValueResponse.fromMap((map['result'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

