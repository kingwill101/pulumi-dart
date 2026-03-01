// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_monitoring_config_backends_item.dart';

/// MonitoringConfig specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class PolicyControllerMonitoringConfig {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<PolicyControllerMonitoringConfigBackendsItem>? backends;

  /// Creates a new [PolicyControllerMonitoringConfig].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  PolicyControllerMonitoringConfig({this.backends});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': ?backends == null
          ? null
          : pulumi.Input.encodeList<
              PolicyControllerMonitoringConfigBackendsItem,
              String
            >(backends!, (value) => value.value),
    };
  }

  factory PolicyControllerMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMonitoringConfig(
      backends: map['backends'] == null
          ? null
          : pulumi
                .Input.decodeList<PolicyControllerMonitoringConfigBackendsItem>(
              map['backends'],
              (value) => PolicyControllerMonitoringConfigBackendsItem.fromValue(
                value as String,
              ),
            ),
    );
  }
}
