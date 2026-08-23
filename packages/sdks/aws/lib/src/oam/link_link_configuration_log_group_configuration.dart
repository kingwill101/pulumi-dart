// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkLinkConfigurationLogGroupConfiguration {
  /// Filter string that specifies which log groups are to share their log events with the monitoring account. See [LogGroupConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_LogGroupConfiguration.html) for details.
  final pulumi.Input<String> filter;

  /// Creates a new [LinkLinkConfigurationLogGroupConfiguration].
  /// [filter] Filter string that specifies which log groups are to share their log events with the monitoring account. See [LogGroupConfiguration](https://docs.aws.amazon.com/OAM/latest/APIReference/API_LogGroupConfiguration.html) for details.
  const LinkLinkConfigurationLogGroupConfiguration({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
    };
  }

  factory LinkLinkConfigurationLogGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return LinkLinkConfigurationLogGroupConfiguration(
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
