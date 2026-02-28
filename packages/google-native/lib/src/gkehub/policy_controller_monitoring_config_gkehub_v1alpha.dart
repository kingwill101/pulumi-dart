// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_monitoring_config_backends_item_gkehub_v1alpha.dart';

/// MonitoringConfig specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class PolicyControllerMonitoringConfigGkehubV1alpha {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha>? backends;

  /// Creates a new [PolicyControllerMonitoringConfigGkehubV1alpha].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  PolicyControllerMonitoringConfigGkehubV1alpha({
    this.backends,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': ?backends == null ? null : pulumi.Input.encodeList<PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha, String>(backends!, (value) => value.value),
    };
  }

  factory PolicyControllerMonitoringConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMonitoringConfigGkehubV1alpha(
      backends: map['backends'] == null ? null : pulumi.Input.decodeList<PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha>(map['backends'], (value) => PolicyControllerMonitoringConfigBackendsItemGkehubV1alpha.fromValue(value as String)),
    );
  }
}

