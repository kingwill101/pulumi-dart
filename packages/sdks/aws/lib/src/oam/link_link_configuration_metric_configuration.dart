// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkLinkConfigurationMetricConfiguration {
  /// Filter string that specifies  which metrics are to be shared with the monitoring account. See [MetricConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_MetricConfiguration.html) for details.
  final pulumi.Input<String> filter;

  /// Creates a new [LinkLinkConfigurationMetricConfiguration].
  /// [filter] Filter string that specifies  which metrics are to be shared with the monitoring account. See [MetricConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_MetricConfiguration.html) for details.
  LinkLinkConfigurationMetricConfiguration({required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter};
  }

  factory LinkLinkConfigurationMetricConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinkLinkConfigurationMetricConfiguration(
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
