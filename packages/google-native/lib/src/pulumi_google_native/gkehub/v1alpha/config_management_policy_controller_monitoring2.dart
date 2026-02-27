// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'config_management_policy_controller_monitoring_backends_item2.dart';

/// PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class ConfigManagementPolicyControllerMonitoring2 {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<ConfigManagementPolicyControllerMonitoringBackendsItem2>? backends;

  ConfigManagementPolicyControllerMonitoring2({
    this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = Input.encodeList<
          ConfigManagementPolicyControllerMonitoringBackendsItem2,
          String>(backendsValue, (value) => value.value);
    }
    return map;
  }

  factory ConfigManagementPolicyControllerMonitoring2.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerMonitoring2(
      backends: map['backends'] == null
          ? null
          : Input.decodeList<
                  ConfigManagementPolicyControllerMonitoringBackendsItem2>(
              map['backends'],
              (value) => ConfigManagementPolicyControllerMonitoringBackendsItem2
                  .fromValue(value as String)),
    );
  }
}
