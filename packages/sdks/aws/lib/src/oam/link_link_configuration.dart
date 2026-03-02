// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_link_configuration_log_group_configuration.dart';
import 'link_link_configuration_metric_configuration.dart';

class LinkLinkConfiguration {
  /// Configuration for filtering which log groups are to send log events from the source account to the monitoring account. See `log_group_configuration` Block for details.
  final pulumi.Input<LinkLinkConfigurationLogGroupConfiguration>? logGroupConfiguration;
  /// Configuration for filtering which metric namespaces are to be shared from the source account to the monitoring account. See `metric_configuration` Block for details.
  final pulumi.Input<LinkLinkConfigurationMetricConfiguration>? metricConfiguration;

  /// Creates a new [LinkLinkConfiguration].
  /// [logGroupConfiguration] Configuration for filtering which log groups are to send log events from the source account to the monitoring account. See `log_group_configuration` Block for details.
  /// [metricConfiguration] Configuration for filtering which metric namespaces are to be shared from the source account to the monitoring account. See `metric_configuration` Block for details.
  LinkLinkConfiguration({
    this.logGroupConfiguration,
    this.metricConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<LinkLinkConfigurationLogGroupConfiguration, Map<String, dynamic>>(logGroupConfiguration, (value) => value.toMap()),
      'metricConfiguration': ?pulumi.Input.mapOptionalInputValue<LinkLinkConfigurationMetricConfiguration, Map<String, dynamic>>(metricConfiguration, (value) => value.toMap()),
    };
  }

  factory LinkLinkConfiguration.fromMap(Map<String, dynamic> map) {
    return LinkLinkConfiguration(
      logGroupConfiguration: map['logGroupConfiguration'] == null ? null : ((LinkLinkConfigurationLogGroupConfiguration.fromMap((map['logGroupConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      metricConfiguration: map['metricConfiguration'] == null ? null : ((LinkLinkConfigurationMetricConfiguration.fromMap((map['metricConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

