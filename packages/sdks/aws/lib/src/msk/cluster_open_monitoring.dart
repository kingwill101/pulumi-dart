// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_open_monitoring_prometheus.dart';

class ClusterOpenMonitoring {
  /// Configuration block for Prometheus settings for open monitoring. See open_monitoring prometheus Argument Reference below.
  final pulumi.Input<ClusterOpenMonitoringPrometheus> prometheus;

  /// Creates a new [ClusterOpenMonitoring].
  /// [prometheus] Configuration block for Prometheus settings for open monitoring. See open_monitoring prometheus Argument Reference below.
  ClusterOpenMonitoring({required this.prometheus});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prometheus':
          pulumi.Input.mapInputValue<
            ClusterOpenMonitoringPrometheus,
            Map<String, dynamic>
          >(prometheus, (value) => value.toMap()),
    };
  }

  factory ClusterOpenMonitoring.fromMap(Map<String, dynamic> map) {
    return ClusterOpenMonitoring(
      prometheus: pulumi.Input.fromValue(
        ClusterOpenMonitoringPrometheus.fromMap(
          (map['prometheus']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
