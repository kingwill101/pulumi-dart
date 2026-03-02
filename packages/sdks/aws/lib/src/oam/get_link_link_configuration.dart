// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_link_link_configuration_log_group_configuration.dart';
import 'get_link_link_configuration_metric_configuration.dart';

class GetLinkLinkConfiguration {
  /// Configuration for filtering which log groups are to send log events from the source account to the monitoring account. See `log_group_configuration` Block for details.
  final pulumi.Input<List<GetLinkLinkConfigurationLogGroupConfiguration>> logGroupConfigurations;
  /// Configuration for filtering which metric namespaces are to be shared from the source account to the monitoring account. See `metric_configuration` Block for details.
  final pulumi.Input<List<GetLinkLinkConfigurationMetricConfiguration>> metricConfigurations;

  /// Creates a new [GetLinkLinkConfiguration].
  /// [logGroupConfigurations] Configuration for filtering which log groups are to send log events from the source account to the monitoring account. See `log_group_configuration` Block for details.
  /// [metricConfigurations] Configuration for filtering which metric namespaces are to be shared from the source account to the monitoring account. See `metric_configuration` Block for details.
  GetLinkLinkConfiguration({
    required this.logGroupConfigurations,
    required this.metricConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupConfigurations': pulumi.Input.mapInputValue<List<GetLinkLinkConfigurationLogGroupConfiguration>, List<Map<String, dynamic>>>(logGroupConfigurations, (value) => pulumi.Input.encodeList<GetLinkLinkConfigurationLogGroupConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricConfigurations': pulumi.Input.mapInputValue<List<GetLinkLinkConfigurationMetricConfiguration>, List<Map<String, dynamic>>>(metricConfigurations, (value) => pulumi.Input.encodeList<GetLinkLinkConfigurationMetricConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLinkLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetLinkLinkConfiguration(
      logGroupConfigurations: (pulumi.Input.decodeList<GetLinkLinkConfigurationLogGroupConfiguration>(map['logGroupConfigurations']!, (value) => GetLinkLinkConfigurationLogGroupConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricConfigurations: (pulumi.Input.decodeList<GetLinkLinkConfigurationMetricConfiguration>(map['metricConfigurations']!, (value) => GetLinkLinkConfigurationMetricConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

