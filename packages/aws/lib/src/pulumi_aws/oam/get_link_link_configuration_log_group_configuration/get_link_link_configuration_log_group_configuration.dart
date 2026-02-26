// ignore_for_file: unused_element, unnecessary_cast

class GetLinkLinkConfigurationLogGroupConfiguration {
  /// Filter string that specifies  which metrics are to be shared with the monitoring account. See [MetricConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_MetricConfiguration.html) for details.
  final String filter;

  GetLinkLinkConfigurationLogGroupConfiguration({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    return map;
  }

  factory GetLinkLinkConfigurationLogGroupConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetLinkLinkConfigurationLogGroupConfiguration(
      filter: map['filter'] as String,
    );
  }
}
