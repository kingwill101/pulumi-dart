// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_listener_outlier_detection_base_ejection_duration/get_virtual_node_spec_listener_outlier_detection_base_ejection_duration.dart';
import '../get_virtual_node_spec_listener_outlier_detection_interval/get_virtual_node_spec_listener_outlier_detection_interval.dart';

class GetVirtualNodeSpecListenerOutlierDetection {
  final List<GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration>
      baseEjectionDurations;
  final List<GetVirtualNodeSpecListenerOutlierDetectionInterval> intervals;
  final int maxEjectionPercent;
  final int maxServerErrors;

  GetVirtualNodeSpecListenerOutlierDetection({
    required this.baseEjectionDurations,
    required this.intervals,
    required this.maxEjectionPercent,
    required this.maxServerErrors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseEjectionDurations'] = Input.encodeList<
        GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration,
        Map<String, dynamic>>(baseEjectionDurations, (value) => value.toMap());
    map['intervals'] = Input.encodeList<
        GetVirtualNodeSpecListenerOutlierDetectionInterval,
        Map<String, dynamic>>(intervals, (value) => value.toMap());
    map['maxEjectionPercent'] = maxEjectionPercent;
    map['maxServerErrors'] = maxServerErrors;
    return map;
  }

  factory GetVirtualNodeSpecListenerOutlierDetection.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerOutlierDetection(
      baseEjectionDurations: Input.decodeList<
              GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration>(
          map['baseEjectionDurations'],
          (value) =>
              GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration
                  .fromMap((value as Map).cast<String, dynamic>())),
      intervals:
          Input.decodeList<GetVirtualNodeSpecListenerOutlierDetectionInterval>(
              map['intervals'],
              (value) =>
                  GetVirtualNodeSpecListenerOutlierDetectionInterval.fromMap(
                      (value as Map).cast<String, dynamic>())),
      maxEjectionPercent: map['maxEjectionPercent'] as int,
      maxServerErrors: map['maxServerErrors'] as int,
    );
  }
}
