// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_management_policy_controller_monitoring_backends_item_gkehub_v1alpha.dart';

/// PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class ConfigManagementPolicyControllerMonitoringGkehubV1alpha {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<
          ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha>?
      backends;

  ConfigManagementPolicyControllerMonitoringGkehubV1alpha({
    this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = pulumi.Input.encodeList<
          ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha,
          String>(backendsValue, (value) => value.value);
    }
    return map;
  }

  factory ConfigManagementPolicyControllerMonitoringGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerMonitoringGkehubV1alpha(
      backends: map['backends'] == null
          ? null
          : pulumi.Input.decodeList<
                  ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha>(
              map['backends'],
              (value) =>
                  ConfigManagementPolicyControllerMonitoringBackendsItemGkehubV1alpha
                      .fromValue(value as String)),
    );
  }
}
