// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_outlier_detection_base_ejection_duration.dart';
import 'virtual_node_spec_listener_outlier_detection_interval.dart';

class VirtualNodeSpecListenerOutlierDetection {
  /// Base amount of time for which a host is ejected.
  final VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration
      baseEjectionDuration;

  /// Time interval between ejection sweep analysis.
  final VirtualNodeSpecListenerOutlierDetectionInterval interval;

  /// Maximum percentage of hosts in load balancing pool for upstream service that can be ejected. Will eject at least one host regardless of the value.
  /// Minimum value of `0`. Maximum value of `100`.
  final int maxEjectionPercent;

  /// Number of consecutive `5xx` errors required for ejection. Minimum value of `1`.
  final int maxServerErrors;

  /// Creates a new [VirtualNodeSpecListenerOutlierDetection].
  /// [baseEjectionDuration] Base amount of time for which a host is ejected.
  /// [interval] Time interval between ejection sweep analysis.
  /// [maxEjectionPercent] Maximum percentage of hosts in load balancing pool for upstream service that can be ejected. Will eject at least one host regardless of the value.
  /// [maxServerErrors] Number of consecutive `5xx` errors required for ejection. Minimum value of `1`.
  VirtualNodeSpecListenerOutlierDetection({
    required this.baseEjectionDuration,
    required this.interval,
    required this.maxEjectionPercent,
    required this.maxServerErrors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseEjectionDuration'] = baseEjectionDuration.toMap();
    map['interval'] = interval.toMap();
    map['maxEjectionPercent'] = maxEjectionPercent;
    map['maxServerErrors'] = maxServerErrors;
    return map;
  }

  factory VirtualNodeSpecListenerOutlierDetection.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerOutlierDetection(
      baseEjectionDuration:
          VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap(
              (map['baseEjectionDuration'] as Map).cast<String, dynamic>()),
      interval: VirtualNodeSpecListenerOutlierDetectionInterval.fromMap(
          (map['interval'] as Map).cast<String, dynamic>()),
      maxEjectionPercent: map['maxEjectionPercent'] as int,
      maxServerErrors: map['maxServerErrors'] as int,
    );
  }
}
