// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_node_spec_listener_outlier_detection_base_ejection_duration/virtual_node_spec_listener_outlier_detection_base_ejection_duration.dart';
import '../virtual_node_spec_listener_outlier_detection_interval/virtual_node_spec_listener_outlier_detection_interval.dart';

class VirtualNodeSpecListenerOutlierDetection {
  /// Base amount of time for which a host is ejected.
  final VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration
      baseEjectionDuration;

  /// Time interval between ejection sweep analysis.
  final VirtualNodeSpecListenerOutlierDetectionInterval interval;

  /// Maximum percentage of hosts in load balancing pool for upstream service that can be ejected. Will eject at least one host regardless of the value.
  /// Minimum value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Maximum value of <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  final int maxEjectionPercent;

  /// Number of consecutive <span pulumi-lang-nodejs="`5xx`" pulumi-lang-dotnet="`5xx`" pulumi-lang-go="`5xx`" pulumi-lang-python="`5xx`" pulumi-lang-yaml="`5xx`" pulumi-lang-java="`5xx`">`5xx`</span> errors required for ejection. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int maxServerErrors;

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
