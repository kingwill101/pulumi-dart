// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'policy_controller_monitoring_config_backends_item3.dart';

/// MonitoringConfig specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class PolicyControllerMonitoringConfig3 {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<PolicyControllerMonitoringConfigBackendsItem3>? backends;

  PolicyControllerMonitoringConfig3({
    this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = Input.encodeList<
          PolicyControllerMonitoringConfigBackendsItem3,
          String>(backendsValue, (value) => value.value);
    }
    return map;
  }

  factory PolicyControllerMonitoringConfig3.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMonitoringConfig3(
      backends: map['backends'] == null
          ? null
          : Input.decodeList<PolicyControllerMonitoringConfigBackendsItem3>(
              map['backends'],
              (value) =>
                  PolicyControllerMonitoringConfigBackendsItem3.fromValue(
                      value as String)),
    );
  }
}
