// ignore_for_file: unused_element, unnecessary_cast

import '../link_link_configuration_log_group_configuration/link_link_configuration_log_group_configuration.dart';
import '../link_link_configuration_metric_configuration/link_link_configuration_metric_configuration.dart';

class LinkLinkConfiguration {
  /// Configuration for filtering which log groups are to send log events from the source account to the monitoring account. See <span pulumi-lang-nodejs="`logGroupConfiguration`" pulumi-lang-dotnet="`LogGroupConfiguration`" pulumi-lang-go="`logGroupConfiguration`" pulumi-lang-python="`log_group_configuration`" pulumi-lang-yaml="`logGroupConfiguration`" pulumi-lang-java="`logGroupConfiguration`">`log_group_configuration`</span> Block for details.
  final LinkLinkConfigurationLogGroupConfiguration? logGroupConfiguration;

  /// Configuration for filtering which metric namespaces are to be shared from the source account to the monitoring account. See <span pulumi-lang-nodejs="`metricConfiguration`" pulumi-lang-dotnet="`MetricConfiguration`" pulumi-lang-go="`metricConfiguration`" pulumi-lang-python="`metric_configuration`" pulumi-lang-yaml="`metricConfiguration`" pulumi-lang-java="`metricConfiguration`">`metric_configuration`</span> Block for details.
  final LinkLinkConfigurationMetricConfiguration? metricConfiguration;

  LinkLinkConfiguration({
    this.logGroupConfiguration,
    this.metricConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logGroupConfigurationValue = logGroupConfiguration;
    if (logGroupConfigurationValue != null) {
      map['logGroupConfiguration'] = logGroupConfigurationValue.toMap();
    }
    final metricConfigurationValue = metricConfiguration;
    if (metricConfigurationValue != null) {
      map['metricConfiguration'] = metricConfigurationValue.toMap();
    }
    return map;
  }

  factory LinkLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return LinkLinkConfiguration(
      logGroupConfiguration: map['logGroupConfiguration'] == null
          ? null
          : LinkLinkConfigurationLogGroupConfiguration.fromMap(
              (map['logGroupConfiguration'] as Map).cast<String, dynamic>()),
      metricConfiguration: map['metricConfiguration'] == null
          ? null
          : LinkLinkConfigurationMetricConfiguration.fromMap(
              (map['metricConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
