// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration {
  /// The default value of the dimension that is published to Amazon CloudWatch if you don't provide the value of the dimension when you send an email.
  final String defaultDimensionValue;

  /// The name of an Amazon CloudWatch dimension associated with an email sending metric.
  final String dimensionName;

  /// The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. Valid values: `MESSAGE_TAG`, `EMAIL_HEADER`, `LINK_TAG`.
  final String dimensionValueSource;

  ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration({
    required this.defaultDimensionValue,
    required this.dimensionName,
    required this.dimensionValueSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultDimensionValue'] = defaultDimensionValue;
    map['dimensionName'] = dimensionName;
    map['dimensionValueSource'] = dimensionValueSource;
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration(
      defaultDimensionValue: map['defaultDimensionValue'] as String,
      dimensionName: map['dimensionName'] as String,
      dimensionValueSource: map['dimensionValueSource'] as String,
    );
  }
}
