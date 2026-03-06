// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration {
  /// The default value of the dimension that is published to Amazon CloudWatch if you don't provide the value of the dimension when you send an email.
  final pulumi.Input<String> defaultDimensionValue;
  /// The name of an Amazon CloudWatch dimension associated with an email sending metric.
  final pulumi.Input<String> dimensionName;
  /// The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. Valid values: `MESSAGE_TAG`, `EMAIL_HEADER`, `LINK_TAG`.
  final pulumi.Input<String> dimensionValueSource;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration].
  /// [defaultDimensionValue] The default value of the dimension that is published to Amazon CloudWatch if you don't provide the value of the dimension when you send an email.
  /// [dimensionName] The name of an Amazon CloudWatch dimension associated with an email sending metric.
  /// [dimensionValueSource] The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. Valid values: `MESSAGE_TAG`, `EMAIL_HEADER`, `LINK_TAG`.
  const ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration({
    required this.defaultDimensionValue,
    required this.dimensionName,
    required this.dimensionValueSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDimensionValue': defaultDimensionValue,
      'dimensionName': dimensionName,
      'dimensionValueSource': dimensionValueSource,
    };
  }

  factory ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration(
      defaultDimensionValue: pulumi.Input.fromValue(map['defaultDimensionValue'] as String),
      dimensionName: pulumi.Input.fromValue(map['dimensionName'] as String),
      dimensionValueSource: pulumi.Input.fromValue(map['dimensionValueSource'] as String),
    );
  }
}

