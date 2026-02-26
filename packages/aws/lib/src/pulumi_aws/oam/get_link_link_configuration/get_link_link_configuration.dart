// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_link_link_configuration_log_group_configuration/get_link_link_configuration_log_group_configuration.dart';
import '../get_link_link_configuration_metric_configuration/get_link_link_configuration_metric_configuration.dart';

class GetLinkLinkConfiguration {
  /// Configuration for filtering which log groups are to send log events from the source account to the monitoring account. See <span pulumi-lang-nodejs="`logGroupConfiguration`" pulumi-lang-dotnet="`LogGroupConfiguration`" pulumi-lang-go="`logGroupConfiguration`" pulumi-lang-python="`log_group_configuration`" pulumi-lang-yaml="`logGroupConfiguration`" pulumi-lang-java="`logGroupConfiguration`">`log_group_configuration`</span> Block for details.
  final List<GetLinkLinkConfigurationLogGroupConfiguration>
      logGroupConfigurations;

  /// Configuration for filtering which metric namespaces are to be shared from the source account to the monitoring account. See <span pulumi-lang-nodejs="`metricConfiguration`" pulumi-lang-dotnet="`MetricConfiguration`" pulumi-lang-go="`metricConfiguration`" pulumi-lang-python="`metric_configuration`" pulumi-lang-yaml="`metricConfiguration`" pulumi-lang-java="`metricConfiguration`">`metric_configuration`</span> Block for details.
  final List<GetLinkLinkConfigurationMetricConfiguration> metricConfigurations;

  GetLinkLinkConfiguration({
    required this.logGroupConfigurations,
    required this.metricConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupConfigurations'] = Input.encodeList<
        GetLinkLinkConfigurationLogGroupConfiguration,
        Map<String, dynamic>>(logGroupConfigurations, (value) => value.toMap());
    map['metricConfigurations'] = Input.encodeList<
        GetLinkLinkConfigurationMetricConfiguration,
        Map<String, dynamic>>(metricConfigurations, (value) => value.toMap());
    return map;
  }

  factory GetLinkLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetLinkLinkConfiguration(
      logGroupConfigurations:
          Input.decodeList<GetLinkLinkConfigurationLogGroupConfiguration>(
              map['logGroupConfigurations'],
              (value) => GetLinkLinkConfigurationLogGroupConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metricConfigurations:
          Input.decodeList<GetLinkLinkConfigurationMetricConfiguration>(
              map['metricConfigurations'],
              (value) => GetLinkLinkConfigurationMetricConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
