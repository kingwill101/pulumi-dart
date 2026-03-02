// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_destination_configuration.dart';

/// Input properties used for looking up and filtering LoggingConfiguration resources.
class LoggingConfigurationState {
  /// ARN of the Logging Configuration.
  final pulumi.Input<String>? arn;
  /// Object containing destination configuration for where chat activity will be logged. This object must contain exactly one of the following children arguments:
  final pulumi.Input<LoggingConfigurationDestinationConfiguration>? destinationConfiguration;
  /// Logging Configuration name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the Logging Configuration.
  final pulumi.Input<String>? state;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LoggingConfigurationState].
  /// [arn] ARN of the Logging Configuration.
  /// [destinationConfiguration] Object containing destination configuration for where chat activity will be logged. This object must contain exactly one of the following children arguments:
  /// [name] Logging Configuration name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the Logging Configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LoggingConfigurationState({
    this.arn,
    this.destinationConfiguration,
    this.name,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destinationConfiguration': ?pulumi.Input.mapOptionalInputValue<LoggingConfigurationDestinationConfiguration, Map<String, dynamic>>(destinationConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      destinationConfiguration: map['destinationConfiguration'] == null ? null : ((LoggingConfigurationDestinationConfiguration.fromMap((map['destinationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

