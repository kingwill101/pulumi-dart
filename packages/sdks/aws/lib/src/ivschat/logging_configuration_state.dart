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
    pulumi.Output<String>? arn,
    pulumi.Output<LoggingConfigurationDestinationConfiguration>? destinationConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destinationConfiguration = pulumi.Input.asOptionalInput<LoggingConfigurationDestinationConfiguration>(destinationConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destinationConfiguration: map['destinationConfiguration'] == null ? null : pulumi.Output.create<LoggingConfigurationDestinationConfiguration>(LoggingConfigurationDestinationConfiguration.fromMap((map['destinationConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

