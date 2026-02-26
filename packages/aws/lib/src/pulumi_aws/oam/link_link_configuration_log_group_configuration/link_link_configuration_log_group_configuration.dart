// ignore_for_file: unused_element, unnecessary_cast

class LinkLinkConfigurationLogGroupConfiguration {
  /// Filter string that specifies which log groups are to share their log events with the monitoring account. See [LogGroupConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_LogGroupConfiguration.html) for details.
  final String filter;

  LinkLinkConfigurationLogGroupConfiguration({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    return map;
  }

  factory LinkLinkConfigurationLogGroupConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LinkLinkConfigurationLogGroupConfiguration(
      filter: map['filter'] as String,
    );
  }
}
