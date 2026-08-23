// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_outlier_detection_base_ejection_duration.dart';
import 'get_virtual_node_spec_listener_outlier_detection_interval.dart';

class GetVirtualNodeSpecListenerOutlierDetection {
  /// Base amount of time for which a host is ejected. See `spec.listener.outlier_detection.base_ejection_duration` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration>> baseEjectionDurations;
  /// Time interval between ejection sweep analysis. See `spec.listener.outlier_detection.interval` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerOutlierDetectionInterval>> intervals;
  /// Maximum percentage of hosts in load balancing pool for upstream service that can be ejected.
  final pulumi.Input<int> maxEjectionPercent;
  /// Number of consecutive `5xx` errors required for ejection.
  final pulumi.Input<int> maxServerErrors;

  /// Creates a new [GetVirtualNodeSpecListenerOutlierDetection].
  /// [baseEjectionDurations] Base amount of time for which a host is ejected. See `spec.listener.outlier_detection.base_ejection_duration` Block for details.
  /// [intervals] Time interval between ejection sweep analysis. See `spec.listener.outlier_detection.interval` Block for details.
  /// [maxEjectionPercent] Maximum percentage of hosts in load balancing pool for upstream service that can be ejected.
  /// [maxServerErrors] Number of consecutive `5xx` errors required for ejection.
  const GetVirtualNodeSpecListenerOutlierDetection({
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
      baseEjectionDurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration>(map['baseEjectionDurations']!, (value) => GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap((value as Map).cast<String, dynamic>()))),
      intervals: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerOutlierDetectionInterval>(map['intervals']!, (value) => GetVirtualNodeSpecListenerOutlierDetectionInterval.fromMap((value as Map).cast<String, dynamic>()))),
      maxEjectionPercent: pulumi.Input.fromValue(map['maxEjectionPercent'] as int),
      maxServerErrors: pulumi.Input.fromValue(map['maxServerErrors'] as int),
    );
  }
}
