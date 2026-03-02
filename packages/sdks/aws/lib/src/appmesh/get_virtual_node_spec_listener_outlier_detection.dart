// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_outlier_detection_base_ejection_duration.dart';
import 'get_virtual_node_spec_listener_outlier_detection_interval.dart';

class GetVirtualNodeSpecListenerOutlierDetection {
  final pulumi.Input<List<GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration>> baseEjectionDurations;
  final pulumi.Input<List<GetVirtualNodeSpecListenerOutlierDetectionInterval>> intervals;
  final pulumi.Input<int> maxEjectionPercent;
  final pulumi.Input<int> maxServerErrors;

  /// Creates a new [GetVirtualNodeSpecListenerOutlierDetection].
  /// [baseEjectionDurations] Required.
  /// [intervals] Required.
  /// [maxEjectionPercent] Required.
  /// [maxServerErrors] Required.
  GetVirtualNodeSpecListenerOutlierDetection({
    required this.baseEjectionDurations,
    required this.intervals,
    required this.maxEjectionPercent,
    required this.maxServerErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseEjectionDurations': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration>, List<Map<String, dynamic>>>(baseEjectionDurations, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'intervals': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerOutlierDetectionInterval>, List<Map<String, dynamic>>>(intervals, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerOutlierDetectionInterval, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxEjectionPercent': maxEjectionPercent,
      'maxServerErrors': maxServerErrors,
    };
  }

  factory GetVirtualNodeSpecListenerOutlierDetection.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerOutlierDetection(
      baseEjectionDurations: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration>(map['baseEjectionDurations']!, (value) => GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      intervals: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerOutlierDetectionInterval>(map['intervals']!, (value) => GetVirtualNodeSpecListenerOutlierDetectionInterval.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxEjectionPercent: (map['maxEjectionPercent'] as int).input(),
      maxServerErrors: (map['maxServerErrors'] as int).input(),
    );
  }
}

