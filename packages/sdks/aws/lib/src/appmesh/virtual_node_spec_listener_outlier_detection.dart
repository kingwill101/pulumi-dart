// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_outlier_detection_base_ejection_duration.dart';
import 'virtual_node_spec_listener_outlier_detection_interval.dart';

class VirtualNodeSpecListenerOutlierDetection {
  /// Base amount of time for which a host is ejected.
  final pulumi.Input<VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration> baseEjectionDuration;
  /// Time interval between ejection sweep analysis.
  final pulumi.Input<VirtualNodeSpecListenerOutlierDetectionInterval> interval;
  /// Maximum percentage of hosts in load balancing pool for upstream service that can be ejected. Will eject at least one host regardless of the value.
  /// Minimum value of `0`. Maximum value of `100`.
  final pulumi.Input<int> maxEjectionPercent;
  /// Number of consecutive `5xx` errors required for ejection. Minimum value of `1`.
  final pulumi.Input<int> maxServerErrors;

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
    return <String, dynamic>{
      'baseEjectionDuration': pulumi.Input.mapInputValue<VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration, Map<String, dynamic>>(baseEjectionDuration, (value) => value.toMap()),
      'interval': pulumi.Input.mapInputValue<VirtualNodeSpecListenerOutlierDetectionInterval, Map<String, dynamic>>(interval, (value) => value.toMap()),
      'maxEjectionPercent': maxEjectionPercent,
      'maxServerErrors': maxServerErrors,
    };
  }

  factory VirtualNodeSpecListenerOutlierDetection.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerOutlierDetection(
      baseEjectionDuration: (VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap((map['baseEjectionDuration']! as Map).cast<String, dynamic>())).input(),
      interval: (VirtualNodeSpecListenerOutlierDetectionInterval.fromMap((map['interval']! as Map).cast<String, dynamic>())).input(),
      maxEjectionPercent: (map['maxEjectionPercent'] as int).input(),
      maxServerErrors: (map['maxServerErrors'] as int).input(),
    );
  }
}

