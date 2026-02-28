// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_engine_reason_response.dart';

class BiEngineStatisticsResponse {
  /// Specifies which mode of BI Engine acceleration was performed (if any).
  final String accelerationMode;

  /// Specifies which mode of BI Engine acceleration was performed (if any).
  final String biEngineMode;

  /// In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated.
  final List<BiEngineReasonResponse> biEngineReasons;

  /// Creates a new [BiEngineStatisticsResponse].
  /// [accelerationMode] Specifies which mode of BI Engine acceleration was performed (if any).
  /// [biEngineMode] Specifies which mode of BI Engine acceleration was performed (if any).
  /// [biEngineReasons] In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated.
  BiEngineStatisticsResponse({
    required this.accelerationMode,
    required this.biEngineMode,
    required this.biEngineReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerationMode'] = accelerationMode;
    map['biEngineMode'] = biEngineMode;
    map['biEngineReasons'] =
        pulumi.Input.encodeList<BiEngineReasonResponse, Map<String, dynamic>>(
            biEngineReasons, (value) => value.toMap());
    return map;
  }

  factory BiEngineStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return BiEngineStatisticsResponse(
      accelerationMode: map['accelerationMode'] as String,
      biEngineMode: map['biEngineMode'] as String,
      biEngineReasons: pulumi.Input.decodeList<BiEngineReasonResponse>(
          map['biEngineReasons'],
          (value) => BiEngineReasonResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
