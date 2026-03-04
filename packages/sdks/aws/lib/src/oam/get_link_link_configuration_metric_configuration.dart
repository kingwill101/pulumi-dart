// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinkLinkConfigurationMetricConfiguration {
  /// Filter string that specifies  which metrics are to be shared with the monitoring account. See [MetricConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_MetricConfiguration.html) for details.
  final pulumi.Input<String> filter;

  /// Creates a new [GetLinkLinkConfigurationMetricConfiguration].
  /// [filter] Filter string that specifies  which metrics are to be shared with the monitoring account. See [MetricConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_MetricConfiguration.html) for details.
  GetLinkLinkConfigurationMetricConfiguration({required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter};
  }

  factory GetLinkLinkConfigurationMetricConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLinkLinkConfigurationMetricConfiguration(
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
