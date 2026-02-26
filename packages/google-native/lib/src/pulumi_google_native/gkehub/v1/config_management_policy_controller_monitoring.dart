// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'config_management_policy_controller_monitoring_backends_item.dart';

/// PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class ConfigManagementPolicyControllerMonitoring {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<ConfigManagementPolicyControllerMonitoringBackendsItem>? backends;

  ConfigManagementPolicyControllerMonitoring({
    this.backends,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendsValue = backends;
    if (backendsValue != null) {
      map['backends'] = Input.encodeList<
          ConfigManagementPolicyControllerMonitoringBackendsItem,
          String>(backendsValue, (value) => value.value);
    }
    return map;
  }

  factory ConfigManagementPolicyControllerMonitoring.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerMonitoring(
      backends: map['backends'] == null
          ? null
          : Input.decodeList<
                  ConfigManagementPolicyControllerMonitoringBackendsItem>(
              map['backends'],
              (value) => ConfigManagementPolicyControllerMonitoringBackendsItem
                  .fromValue(value as String)),
    );
  }
}
